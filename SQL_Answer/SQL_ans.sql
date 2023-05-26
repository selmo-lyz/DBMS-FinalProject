-- Q1
UPDATE semester_course
SET course_room = "K210"
WHERE course_no = "A0001" AND semester = 1112

-- 確認
SELECT course_room
FROM semester_course
WHERE course_no == "A0001" AND semester == 1112

-- Q2
-- 僅計算「在學」者
SELECT student_no, student_name
FROM
    semester_course AS SC
    JOIN enroll AS E ON SC.course_no = E.cno AND SC.semester = E.sem
    JOIN student AS S ON E.sno = S.student_no
WHERE course_no == "A0003" 
      AND semester == 1112 
      AND select_result IN ('中選', '人工加選') 
      AND student_status = '在學'
-- 另一個解答
-- 因為此資料庫假設學生有中選才會 "takes" 該課程
SELECT student_no, student_name
FROM
    semester_course AS SC
    JOIN takes AS T ON SC.course_no = T.cno AND SC.semester = T.sem
    JOIN student AS S ON T.sno = S.student_no
WHERE course_no == "A0001" AND semester == 1112 AND student_status = '在學'

-- Q3
WITH
-- 課名 course
-- 授課教師 course semester_course teach, teacher
course_info (course_no, course_name, teacher_name) AS (
    SELECT
        SC.course_no,
        course_name,
        GROUP_CONCAT(teacher_name, ',') AS teacher_name
    FROM
        course AS C
        JOIN semester_course AS SC ON C.course_no = SC.course_no
        JOIN teach ON SC.course_no = teach.cno AND SC.semester = teach.sem
        JOIN teacher AS T ON teach.tno = T.teacher_no
    WHERE SC.semester = 1112
    GROUP BY SC.course_no
),
-- 僅計算「在學」者
-- 修課人數 semester_course takes
num_stu (course_no, student_num) AS (
    SELECT SC.course_no, COUNT(T.sno)
    FROM
        semester_course AS SC
        JOIN takes AS T ON SC.course_no = T.cno AND SC.semester = T.sem
        JOIN student AS S ON T.sno = S.student_no
    WHERE SC.semester = 1112 AND S.student_status = '在學'
    GROUP BY SC.course_no
),
-- 僅計算有成績者
-- 「休學」、「退學」的學生沒有成績與教學評量
-- 不及格人次 (大學 <60, 碩班 <70) semester_course takes student
num_failed (course_no, failed_num) AS (
    SELECT SC.course_no, COUNT(T.sno)
    FROM
        semester_course AS SC
        JOIN takes AS T ON SC.course_no = T.cno AND SC.semester = T.sem
        JOIN student AS S ON T.sno = S.student_no
    WHERE SC.semester = 1112 AND
          T.course_score < CASE WHEN (S.student_dept LIKE '%研究所%' OR S.student_dept LIKE '%碩士班') THEN 70 ELSE 60 END
    GROUP BY SC.course_no
)

SELECT
    course_name AS 課名,
    teacher_name AS 授課老師,
    failed_num AS 不及格人次,
    student_num AS 修課人次,
    ROUND(CAST(failed_num AS REAL)/student_num, 2) AS 不及格比例
FROM
    course_info AS CI
    JOIN num_stu AS NS ON CI.course_no = NS.course_no
    JOIN num_failed AS NF ON NS.course_no = NF.course_no

-- Q4
-- 僅計算「在學」者
-- 學生系所 student
-- 課程領域 semester_course takes curriulum_field
-- 人次 semester_course takes
-- 佔比
SELECT
    dept AS 學生系所,
    field AS 課程領域,
    COUNT(student_no) AS 人次,
    ROUND(CAST(COUNT(student_no) AS REAL)/(COUNT(student_no) OVER (PARTITION BY dept)), 2)  AS 佔比
FROM (
    SELECT
        CASE WHEN S.student_dept LIKE '%研究所%'
            THEN SUBSTR(S.student_dept, 1, INSTR(S.student_dept, '研究所')-1)||'系'
        WHEN S.student_dept LIKE '%碩士班%'
            THEN SUBSTR(S.student_dept, 1, INSTR(S.student_dept, '碩士班')-1)
        ELSE SUBSTR(S.student_dept, 1, LENGTH(S.student_dept)) END 
        AS dept,
        curriculum_field AS field,
        student_no
    FROM
        student AS S
        JOIN takes AS T ON S.student_no = T.sno
        JOIN semester_course AS SC ON T.cno = SC.course_no AND T.sem = SC.semester
        JOIN curriculum_field AS CF ON SC.course_no = CF.cno
    WHERE S.student_status = '在學'
)
GROUP BY
    dept,
    field

-- Q5
-- 僅計算有成績者
-- 「休學」、「退學」的學生沒有成績與教學評量
-- 課名 course
-- 授課教師 course, semester_course teach teacher
-- 教學評量總分 semester_course takes
-- 教學評量平均分數
WITH
course_info (course_no, course_name, teacher_name) AS (
    SELECT
        SC.course_no,
        course_name,
        GROUP_CONCAT(teacher_name, ',') AS teacher_name
    FROM
        course AS C
        JOIN semester_course AS SC ON C.course_no = SC.course_no
        JOIN teach ON SC.course_no = teach.cno AND SC.semester = teach.sem
        JOIN teacher AS T ON teach.tno = T.teacher_no
    WHERE SC.semester = 1112
    GROUP BY SC.course_no
),
feedback (course_no, sum_feedback, avg_feedback) AS (
    SELECT
        SC.course_no,
        SUM(T.feedback_rank),
        ROUND(AVG(T.feedback_rank), 2)
    FROM
        semester_course AS SC
        JOIN takes AS T ON SC.course_no = T.cno AND SC.semester = T.sem
    WHERE SC.semester = 1112
    GROUP BY SC.course_no
)

SELECT
    course_name AS 課名,
    teacher_name AS 授課教師,
    sum_feedback AS 教學評量總分,
    avg_feedback AS 教學評量平均分數
FROM course_info
     JOIN feedback ON course_info.course_no = feedback.course_no