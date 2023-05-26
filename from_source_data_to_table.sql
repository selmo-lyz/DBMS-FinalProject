-- student
INSERT INTO student (student_name, student_dept, student_grade, student_class, student_status)
SELECT DISTINCT student_name, student_dept, student_grade, student_class, student_status
FROM course_data

-- course
INSERT INTO course (course_no, course_name, course_type, course_credit)
SELECT DISTINCT course_no, course_name, course_type, course_credit
FROM course_data

-- semester_course
INSERT INTO semester_course (course_no, semester, course_building, course_room, course_limit, course_status)
SELECT DISTINCT course_no, semester, course_building, course_room, course_limit, course_status
FROM course_data

-- teacher
WITH teacher_names (course_no, semester, teacher_name) AS (
    SELECT DISTINCT
        course_no,
        semester,
        SUBSTR(origin.teacher_name, INSTR(origin.teacher_name, ',')+1) AS name
    FROM course_data AS origin
    WHERE name != ''
    UNION ALL
    SELECT DISTINCT
        course_no,
        semester,
        SUBSTR(origin.teacher_name, 0, INSTR(origin.teacher_name, ',')) AS name
    FROM course_data AS origin
    WHERE name != ''
)

INSERT INTO teacher (teacher_name)
SELECT DISTINCT teacher_name
FROM teacher_names

-- teach
WITH teacher_names (course_no, semester, teacher_name) AS (
    SELECT DISTINCT
        course_no,
        semester,
        SUBSTR(origin.teacher_name, INSTR(origin.teacher_name, ',')+1) AS name
    FROM course_data AS origin
    WHERE name != ''
    UNION ALL
    SELECT DISTINCT
        course_no,
        semester,
        SUBSTR(origin.teacher_name, 0, INSTR(origin.teacher_name, ',')) AS name
    FROM course_data AS origin
    WHERE name != ''
)

INSERT INTO teach (cno, sem, tno)
SELECT DISTINCT course_no, semester, teacher.teacher_no
FROM teacher, teacher_names
WHERE teacher_names.teacher_name == teacher.teacher_name

-- enroll
INSERT INTO enroll (sno, cno, sem, select_result)
SELECT S.student_no, CD.course_no, CD.semester, CD.select_result
FROM (student AS S NATURAL JOIN course_data AS CD)

-- takes
INSERT INTO takes (sno, cno, sem, course_score, feedback_rank)
SELECT S.student_no, CD.course_no, CD.semester, CD.course_score, CD.feedback_rank
FROM (student AS S NATURAL JOIN course_data AS CD)
WHERE CD.select_result != '落選'

-- curriculum_field
WITH field (course_no, semester, name) AS (
    SELECT DISTINCT
        course_no,
        semester,
        TRIM(SUBSTR(origin.curriculum_field, INSTR(origin.curriculum_field, ',')+1)) AS name
    FROM course_data AS origin
    WHERE name != ''
        UNION ALL
    SELECT DISTINCT
        course_no,
        semester,
        TRIM(SUBSTR(origin.curriculum_field, 0, INSTR(origin.curriculum_field, ','))) AS name
    FROM course_data AS origin
    WHERE name != ''
)

INSERT INTO curriculum_field (cno, curriculum_field)
SELECT DISTINCT course_no, name
FROM field

-- course_time
WITH course_period (course_no, semester, name) AS (
    SELECT
        course_no,
        semester,
        TRIM(SUBSTR(course_time, INSTR(course_time, ',')+1)) AS name
    FROM course_data
    WHERE name != ''
    UNION ALL
    SELECT
        course_no,
        semester,
        TRIM(SUBSTR(course_time, 0, INSTR(course_time, ','))) AS name
    FROM course_data
    WHERE name != ''
)

INSERT INTO course_time (cno, sem, course_time)
SELECT DISTINCT course_no, semester, name
FROM course_period
WHERE name != ''

-- https://www.w3resource.com/sqlite/core-functions-instr.php