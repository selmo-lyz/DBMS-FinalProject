--
-- File generated with SQLiteStudio v3.4.4 on 週五 五月 26 15:49:14 2023
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: course
CREATE TABLE IF NOT EXISTS course (
    course_no     TEXT       PRIMARY KEY
                             NOT NULL,
    course_name   TEXT (255) NOT NULL,
    course_type   TEXT       NOT NULL
                             CHECK (course_type IN ('選修', '必修') ),
    course_credit INTEGER    NOT NULL
);

INSERT INTO course (
                       course_no,
                       course_name,
                       course_type,
                       course_credit
                   )
                   VALUES (
                       'A0001',
                       '微積分',
                       '必修',
                       2
                   );

INSERT INTO course (
                       course_no,
                       course_name,
                       course_type,
                       course_credit
                   )
                   VALUES (
                       'A0002',
                       '計算機概論',
                       '必修',
                       3
                   );

INSERT INTO course (
                       course_no,
                       course_name,
                       course_type,
                       course_credit
                   )
                   VALUES (
                       'A0003',
                       '統計學習',
                       '選修',
                       3
                   );

INSERT INTO course (
                       course_no,
                       course_name,
                       course_type,
                       course_credit
                   )
                   VALUES (
                       'A0004',
                       '經濟學',
                       '必修',
                       3
                   );

INSERT INTO course (
                       course_no,
                       course_name,
                       course_type,
                       course_credit
                   )
                   VALUES (
                       'A0005',
                       '統計學',
                       '選修',
                       3
                   );

INSERT INTO course (
                       course_no,
                       course_name,
                       course_type,
                       course_credit
                   )
                   VALUES (
                       'A0006',
                       '音樂欣賞',
                       '選修',
                       2
                   );

INSERT INTO course (
                       course_no,
                       course_name,
                       course_type,
                       course_credit
                   )
                   VALUES (
                       'A0007',
                       '演算法',
                       '選修',
                       3
                   );


-- Table: course_data
CREATE TABLE IF NOT EXISTS course_data (
    semester         VARCHAR (4),
    course_no        TEXT,
    course_name      TEXT (255),
    course_type      TEXT         CHECK (course_type IN ('選修', '必修') ),
    course_room      VARCHAR (20),
    course_building  VARCHAR (20),
    course_time      VARCHAR (20),
    course_credit    INTEGER,
    course_limit     INTEGER,
    course_status    VARCHAR (10),
    teacher_name     VARCHAR (20),
    student_name     VARCHAR (20),
    student_dept     VARCHAR (30),
    student_grade    INTEGER,
    student_status   VARCHAR (10),
    curriculum_field TEXT,
    student_class    VARCHAR (1),
    select_result    VARCHAR (10),
    course_score     NUMERIC,
    feedback_rank    INTEGER
);

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0001',
                            '微積分',
                            '必修',
                            'K205',
                            '工程一館',
                            '一567',
                            2,
                            50,
                            '開課',
                            '岳飛',
                            '張飛',
                            '數學系',
                            1,
                            '在學',
                            '理論數學',
                            'A',
                            '中選',
                            77.7,
                            1
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0001',
                            '微積分',
                            '必修',
                            'K205',
                            '工程一館',
                            '一567',
                            2,
                            50,
                            '開課',
                            '岳飛',
                            '孫尚香',
                            '數學系',
                            1,
                            '休學',
                            '理論數學',
                            'A',
                            '中選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0001',
                            '微積分',
                            '必修',
                            'K205',
                            '工程一館',
                            '一567',
                            2,
                            50,
                            '開課',
                            '岳飛',
                            '周瑜',
                            '數學系',
                            1,
                            '在學',
                            '理論數學',
                            'A',
                            '中選',
                            56,
                            2
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0001',
                            '微積分',
                            '必修',
                            'K205',
                            '工程一館',
                            '一567',
                            2,
                            50,
                            '開課',
                            '岳飛',
                            '黃蓋',
                            '數學系',
                            1,
                            '在學',
                            '理論數學',
                            'A',
                            '中選',
                            34,
                            3
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0001',
                            '微積分',
                            '必修',
                            'K205',
                            '工程一館',
                            '一567',
                            2,
                            50,
                            '開課',
                            '岳飛',
                            '趙雲',
                            '數學系',
                            1,
                            '在學',
                            '理論數學',
                            'A',
                            '中選',
                            98,
                            4
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0001',
                            '微積分',
                            '必修',
                            'K205',
                            '工程一館',
                            '一567',
                            2,
                            50,
                            '開課',
                            '岳飛',
                            '關興',
                            '數學系',
                            1,
                            '在學',
                            '理論數學',
                            'A',
                            '中選',
                            55,
                            5
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0001',
                            '微積分',
                            '必修',
                            'K205',
                            '工程一館',
                            '一567',
                            2,
                            50,
                            '開課',
                            '岳飛',
                            '夏侯惇',
                            '數學系',
                            1,
                            '在學',
                            '理論數學',
                            'A',
                            '中選',
                            67,
                            2
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0001',
                            '微積分',
                            '必修',
                            'K205',
                            '工程一館',
                            '一567',
                            2,
                            50,
                            '開課',
                            '岳飛',
                            '龐統',
                            '資訊工程系',
                            1,
                            '休學',
                            '理論數學',
                            'A',
                            '中選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0002',
                            '計算機概論',
                            '必修',
                            'L102',
                            '工程五館',
                            '二34,五4',
                            3,
                            50,
                            '開課',
                            '陸羽',
                            '關羽',
                            '資訊工程系',
                            1,
                            '在學',
                            '基礎知識,人工智慧',
                            'A',
                            '中選',
                            66,
                            3
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0002',
                            '計算機概論',
                            '必修',
                            'L102',
                            '工程五館',
                            '二34,五4',
                            3,
                            50,
                            '開課',
                            '陸羽',
                            '龐統',
                            '資訊工程系',
                            1,
                            '休學',
                            '基礎知識,人工智慧',
                            'A',
                            '中選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0002',
                            '計算機概論',
                            '必修',
                            'L102',
                            '工程五館',
                            '二34,五4',
                            3,
                            50,
                            '開課',
                            '陸羽',
                            '周瑜',
                            '數學系',
                            1,
                            '在學',
                            '基礎知識,人工智慧',
                            'A',
                            '中選',
                            93,
                            4
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0002',
                            '計算機概論',
                            '必修',
                            'L102',
                            '工程五館',
                            '二34,五4',
                            3,
                            50,
                            '開課',
                            '陸羽',
                            '黃蓋',
                            '數學系',
                            1,
                            '在學',
                            '基礎知識,人工智慧',
                            'A',
                            '中選',
                            44,
                            4
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0002',
                            '計算機概論',
                            '必修',
                            'L102',
                            '工程五館',
                            '二34,五4',
                            3,
                            50,
                            '開課',
                            '陸羽',
                            '趙雲',
                            '數學系',
                            1,
                            '在學',
                            '基礎知識,人工智慧',
                            'A',
                            '中選',
                            49,
                            5
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0002',
                            '計算機概論',
                            '必修',
                            'L102',
                            '工程五館',
                            '二34,五4',
                            3,
                            50,
                            '開課',
                            '陸羽',
                            '夏侯惇',
                            '數學系',
                            1,
                            '在學',
                            '基礎知識,人工智慧',
                            'A',
                            '中選',
                            78,
                            3
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0002',
                            '計算機概論',
                            '必修',
                            'L102',
                            '工程五館',
                            '二34,五4',
                            3,
                            50,
                            '開課',
                            '陸羽',
                            '華雄',
                            '資訊工程研究所',
                            1,
                            '退學',
                            '基礎知識,人工智慧',
                            'A',
                            '中選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0002',
                            '計算機概論',
                            '必修',
                            'L102',
                            '工程五館',
                            '二34,五4',
                            3,
                            50,
                            '開課',
                            '陸羽',
                            '華陀',
                            '資訊工程研究所',
                            1,
                            '在學',
                            '基礎知識,人工智慧',
                            'A',
                            '中選',
                            74,
                            5
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0003',
                            '統計學習',
                            '選修',
                            'M-605',
                            '鴻經館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '劉邦,項羽',
                            '龐統',
                            '資訊工程系',
                            1,
                            '休學',
                            '財務工程,統計推論 ',
                            'A',
                            '中選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0003',
                            '統計學習',
                            '選修',
                            'M-605',
                            '鴻經館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '劉邦,項羽',
                            '張飛',
                            '數學系',
                            1,
                            '在學',
                            '財務工程,統計推論 ',
                            'A',
                            '中選',
                            46,
                            5
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0003',
                            '統計學習',
                            '選修',
                            'M-605',
                            '鴻經館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '劉邦,項羽',
                            '黃蓋',
                            '數學系',
                            1,
                            '在學',
                            '財務工程,統計推論 ',
                            'A',
                            '中選',
                            76,
                            4
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0003',
                            '統計學習',
                            '選修',
                            'M-605',
                            '鴻經館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '劉邦,項羽',
                            '關興',
                            '數學系',
                            1,
                            '在學',
                            '財務工程,統計推論 ',
                            'A',
                            '中選',
                            87,
                            5
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0003',
                            '統計學習',
                            '選修',
                            'M-605',
                            '鴻經館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '劉邦,項羽',
                            '劉備',
                            '資訊管理系',
                            1,
                            '在學',
                            '財務工程,統計推論 ',
                            'A',
                            '落選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0003',
                            '統計學習',
                            '選修',
                            'M-605',
                            '鴻經館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '劉邦,項羽',
                            '華雄',
                            '資訊工程研究所',
                            1,
                            '退學',
                            '財務工程,統計推論 ',
                            'A',
                            '中選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0003',
                            '統計學習',
                            '選修',
                            'M-605',
                            '鴻經館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '劉邦,項羽',
                            '呂布',
                            '資訊工程研究所',
                            1,
                            '在學',
                            '財務工程,統計推論 ',
                            'A',
                            '中選',
                            76,
                            4
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0003',
                            '統計學習',
                            '選修',
                            'M-605',
                            '鴻經館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '劉邦,項羽',
                            '華陀',
                            '資訊工程研究所',
                            1,
                            '在學',
                            '財務工程,統計推論 ',
                            'A',
                            '中選',
                            80,
                            5
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0003',
                            '統計學習',
                            '選修',
                            'M-605',
                            '鴻經館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '劉邦,項羽',
                            '諸葛亮',
                            '資訊工程研究所',
                            1,
                            '在學',
                            '財務工程,統計推論 ',
                            'A',
                            '中選',
                            78,
                            3
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0003',
                            '統計學習',
                            '選修',
                            'M-605',
                            '鴻經館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '劉邦,項羽',
                            '呂蒙',
                            '資訊工程研究所',
                            1,
                            '在學',
                            '財務工程,統計推論 ',
                            'A',
                            '中選',
                            65,
                            4
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0003',
                            '統計學習',
                            '選修',
                            'M-605',
                            '鴻經館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '劉邦,項羽',
                            '圖靈',
                            '數學系碩士班',
                            1,
                            '在學',
                            '財務工程,統計推論',
                            'A',
                            '中選',
                            99,
                            3
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0003',
                            '統計學習',
                            '選修',
                            'M-605',
                            '鴻經館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '劉邦,項羽',
                            '巴斯卡',
                            '數學系碩士班',
                            1,
                            '在學',
                            '財務工程,統計推論',
                            'A',
                            '人工加選',
                            69,
                            1
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0004',
                            '經濟學',
                            '必修',
                            'I1-018',
                            '管理二館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '孔丘',
                            '龐統',
                            '資訊工程系',
                            1,
                            '休學',
                            '基礎知識',
                            'A',
                            '落選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0004',
                            '經濟學',
                            '必修',
                            'I1-018',
                            '管理二館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '孔丘',
                            '張飛',
                            '數學系',
                            1,
                            '在學',
                            '基礎知識',
                            'A',
                            '中選',
                            56,
                            3
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0004',
                            '經濟學',
                            '必修',
                            'I1-018',
                            '管理二館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '孔丘',
                            '孫尚香',
                            '數學系',
                            1,
                            '休學',
                            '基礎知識',
                            'A',
                            '中選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0004',
                            '經濟學',
                            '必修',
                            'I1-018',
                            '管理二館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '孔丘',
                            '黃蓋',
                            '數學系',
                            1,
                            '在學',
                            '基礎知識',
                            'A',
                            '中選',
                            67.5,
                            5
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0004',
                            '經濟學',
                            '必修',
                            'I1-018',
                            '管理二館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '孔丘',
                            '趙雲',
                            '數學系',
                            1,
                            '在學',
                            '基礎知識',
                            'A',
                            '中選',
                            78,
                            4
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0004',
                            '經濟學',
                            '必修',
                            'I1-018',
                            '管理二館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '孔丘',
                            '夏侯惇',
                            '數學系',
                            1,
                            '在學',
                            '基礎知識',
                            'A',
                            '中選',
                            89,
                            2
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0004',
                            '經濟學',
                            '必修',
                            'I1-018',
                            '管理二館',
                            '四567',
                            3,
                            50,
                            '開課',
                            '孔丘',
                            '呂布',
                            '資訊工程研究所',
                            1,
                            '在學',
                            '基礎知識',
                            'A',
                            '中選',
                            45,
                            5
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0005',
                            '統計學',
                            '選修',
                            'I1-304',
                            '管理二館',
                            '五234',
                            3,
                            50,
                            '開課',
                            '莊周',
                            '關羽',
                            '資訊工程系',
                            1,
                            '在學',
                            '基礎知識',
                            'A',
                            '中選',
                            68.7,
                            1
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0005',
                            '統計學',
                            '選修',
                            'I1-304',
                            '管理二館',
                            '五234',
                            3,
                            50,
                            '開課',
                            '莊周',
                            '大喬',
                            '資訊工程系',
                            1,
                            '在學',
                            '基礎知識',
                            'A',
                            '中選',
                            63,
                            4
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0005',
                            '統計學',
                            '選修',
                            'I1-304',
                            '管理二館',
                            '五234',
                            3,
                            50,
                            '開課',
                            '莊周',
                            '甘寧',
                            '資訊工程系',
                            1,
                            '在學',
                            '基礎知識',
                            'A',
                            '中選',
                            46,
                            5
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0005',
                            '統計學',
                            '選修',
                            'I1-304',
                            '管理二館',
                            '五234',
                            3,
                            50,
                            '開課',
                            '莊周',
                            '孫尚香',
                            '數學系',
                            1,
                            '休學',
                            '基礎知識',
                            'A',
                            '中選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0005',
                            '統計學',
                            '選修',
                            'I1-304',
                            '管理二館',
                            '五234',
                            3,
                            50,
                            '開課',
                            '莊周',
                            '周瑜',
                            '數學系',
                            1,
                            '在學',
                            '基礎知識',
                            'A',
                            '中選',
                            78,
                            2
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0005',
                            '統計學',
                            '選修',
                            'I1-304',
                            '管理二館',
                            '五234',
                            3,
                            50,
                            '開課',
                            '莊周',
                            '黃蓋',
                            '數學系',
                            1,
                            '在學',
                            '基礎知識',
                            'A',
                            '中選',
                            87,
                            3
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0005',
                            '統計學',
                            '選修',
                            'I1-304',
                            '管理二館',
                            '五234',
                            3,
                            50,
                            '開課',
                            '莊周',
                            '劉備',
                            '資訊管理系',
                            1,
                            '在學',
                            '基礎知識',
                            'A',
                            '中選',
                            96,
                            2
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0006',
                            '音樂欣賞',
                            '選修',
                            'O-214',
                            '綜教館',
                            '三56',
                            2,
                            100,
                            '開課',
                            '巴哈',
                            '關羽',
                            '資訊工程系',
                            1,
                            '在學',
                            '人文思想',
                            'A',
                            '中選',
                            76,
                            4
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0006',
                            '音樂欣賞',
                            '選修',
                            'O-214',
                            '綜教館',
                            '三56',
                            2,
                            100,
                            '開課',
                            '巴哈',
                            '龐統',
                            '資訊工程系',
                            1,
                            '休學',
                            '人文思想',
                            'A',
                            '中選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0006',
                            '音樂欣賞',
                            '選修',
                            'O-214',
                            '綜教館',
                            '三56',
                            2,
                            100,
                            '開課',
                            '巴哈',
                            '司馬昭',
                            '資訊工程系',
                            1,
                            '在學',
                            '人文思想',
                            'A',
                            '落選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0006',
                            '音樂欣賞',
                            '選修',
                            'O-214',
                            '綜教館',
                            '三56',
                            2,
                            100,
                            '開課',
                            '巴哈',
                            '馬超',
                            '資訊工程系',
                            1,
                            '在學',
                            '人文思想',
                            'A',
                            '落選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0006',
                            '音樂欣賞',
                            '選修',
                            'O-214',
                            '綜教館',
                            '三56',
                            2,
                            100,
                            '開課',
                            '巴哈',
                            '張飛',
                            '數學系',
                            1,
                            '在學',
                            '人文思想',
                            'A',
                            '中選',
                            34,
                            3
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0006',
                            '音樂欣賞',
                            '選修',
                            'O-214',
                            '綜教館',
                            '三56',
                            2,
                            100,
                            '開課',
                            '巴哈',
                            '孫尚香',
                            '數學系',
                            1,
                            '休學',
                            '人文思想',
                            'A',
                            '落選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0006',
                            '音樂欣賞',
                            '選修',
                            'O-214',
                            '綜教館',
                            '三56',
                            2,
                            100,
                            '開課',
                            '巴哈',
                            '周瑜',
                            '數學系',
                            1,
                            '在學',
                            '人文思想',
                            'A',
                            '落選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0006',
                            '音樂欣賞',
                            '選修',
                            'O-214',
                            '綜教館',
                            '三56',
                            2,
                            100,
                            '開課',
                            '巴哈',
                            '黃蓋',
                            '數學系',
                            1,
                            '在學',
                            '人文思想',
                            'A',
                            '中選',
                            80,
                            4
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0006',
                            '音樂欣賞',
                            '選修',
                            'O-214',
                            '綜教館',
                            '三56',
                            2,
                            100,
                            '開課',
                            '巴哈',
                            '關興',
                            '數學系',
                            1,
                            '在學',
                            '人文思想',
                            'A',
                            '中選',
                            62,
                            5
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0006',
                            '音樂欣賞',
                            '選修',
                            'O-214',
                            '綜教館',
                            '三56',
                            2,
                            100,
                            '開課',
                            '巴哈',
                            '夏侯惇',
                            '數學系',
                            1,
                            '在學',
                            '人文思想',
                            'A',
                            '中選',
                            60,
                            3
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0006',
                            '音樂欣賞',
                            '選修',
                            'O-214',
                            '綜教館',
                            '三56',
                            2,
                            100,
                            '開課',
                            '巴哈',
                            '劉備',
                            '資訊管理系',
                            1,
                            '在學',
                            '人文思想',
                            'A',
                            '中選',
                            56,
                            5
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0006',
                            '音樂欣賞',
                            '選修',
                            'O-214',
                            '綜教館',
                            '三56',
                            2,
                            100,
                            '開課',
                            '巴哈',
                            '華雄',
                            '資訊工程研究所',
                            1,
                            '退學',
                            '人文思想',
                            'A',
                            '中選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0006',
                            '音樂欣賞',
                            '選修',
                            'O-214',
                            '綜教館',
                            '三56',
                            2,
                            100,
                            '開課',
                            '巴哈',
                            '華陀',
                            '資訊工程研究所',
                            1,
                            '在學',
                            '人文思想',
                            'A',
                            '中選',
                            98,
                            4
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0006',
                            '音樂欣賞',
                            '選修',
                            'O-214',
                            '綜教館',
                            '三56',
                            2,
                            100,
                            '開課',
                            '巴哈',
                            '諸葛亮',
                            '資訊工程研究所',
                            1,
                            '在學',
                            '人文思想',
                            'A',
                            '中選',
                            55,
                            5
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0006',
                            '音樂欣賞',
                            '選修',
                            'O-214',
                            '綜教館',
                            '三56',
                            2,
                            100,
                            '開課',
                            '巴哈',
                            '呂蒙',
                            '資訊工程研究所',
                            1,
                            '在學',
                            '人文思想',
                            'A',
                            '中選',
                            78,
                            5
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0007',
                            '演算法',
                            '選修',
                            'L102',
                            '工程五館',
                            '三234',
                            3,
                            50,
                            '開課',
                            '達文西',
                            '張飛',
                            '數學系',
                            1,
                            '在學',
                            '人工智慧,資料科學',
                            'A',
                            '落選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0007',
                            '演算法',
                            '選修',
                            'L102',
                            '工程五館',
                            '三234',
                            3,
                            50,
                            '開課',
                            '達文西',
                            '華雄',
                            '資訊工程研究所',
                            1,
                            '退學',
                            '人工智慧,資料科學',
                            'A',
                            '中選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0007',
                            '演算法',
                            '選修',
                            'L102',
                            '工程五館',
                            '三234',
                            3,
                            50,
                            '開課',
                            '達文西',
                            '呂布',
                            '資訊工程研究所',
                            1,
                            '在學',
                            '人工智慧,資料科學',
                            'A',
                            '中選',
                            79,
                            5
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0007',
                            '演算法',
                            '選修',
                            'L102',
                            '工程五館',
                            '三234',
                            3,
                            50,
                            '開課',
                            '達文西',
                            '郭嘉',
                            '資訊工程研究所',
                            1,
                            '在學',
                            '人工智慧,資料科學',
                            'A',
                            '中選',
                            87,
                            4
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0007',
                            '演算法',
                            '選修',
                            'L102',
                            '工程五館',
                            '三234',
                            3,
                            50,
                            '開課',
                            '達文西',
                            '華陀',
                            '資訊工程研究所',
                            1,
                            '在學',
                            '人工智慧,資料科學',
                            'A',
                            '中選',
                            68,
                            3
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0007',
                            '演算法',
                            '選修',
                            'L102',
                            '工程五館',
                            '三234',
                            3,
                            50,
                            '開課',
                            '達文西',
                            '龐統',
                            '資訊工程系',
                            1,
                            '休學',
                            '人工智慧,資料科學',
                            'A',
                            '中選',
                            NULL,
                            NULL
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0007',
                            '演算法',
                            '選修',
                            'L102',
                            '工程五館',
                            '三234',
                            3,
                            50,
                            '開課',
                            '達文西',
                            '圖靈',
                            '數學系碩士班',
                            1,
                            '在學',
                            '人工智慧,資料科學',
                            'A',
                            '中選',
                            99,
                            3
                        );

INSERT INTO course_data (
                            semester,
                            course_no,
                            course_name,
                            course_type,
                            course_room,
                            course_building,
                            course_time,
                            course_credit,
                            course_limit,
                            course_status,
                            teacher_name,
                            student_name,
                            student_dept,
                            student_grade,
                            student_status,
                            curriculum_field,
                            student_class,
                            select_result,
                            course_score,
                            feedback_rank
                        )
                        VALUES (
                            '1112',
                            'A0007',
                            '演算法',
                            '選修',
                            'L102',
                            '工程五館',
                            '三234',
                            3,
                            50,
                            '開課',
                            '達文西',
                            '巴斯卡',
                            '數學系碩士班',
                            1,
                            '在學',
                            '人工智慧,資料科學',
                            'A',
                            '中選',
                            69,
                            1
                        );


-- Table: course_time
CREATE TABLE IF NOT EXISTS course_time (
    cno         TEXT    NOT NULL,
    sem         INTEGER NOT NULL,
    course_time TEXT    NOT NULL,
    FOREIGN KEY (
        cno,
        sem
    )
    REFERENCES semester_course (course_no,
    semester),
    PRIMARY KEY (
        cno,
        sem,
        course_time
    )
);

INSERT INTO course_time (
                            cno,
                            sem,
                            course_time
                        )
                        VALUES (
                            'A0001',
                            1112,
                            '一567'
                        );

INSERT INTO course_time (
                            cno,
                            sem,
                            course_time
                        )
                        VALUES (
                            'A0002',
                            1112,
                            '五4'
                        );

INSERT INTO course_time (
                            cno,
                            sem,
                            course_time
                        )
                        VALUES (
                            'A0003',
                            1112,
                            '四567'
                        );

INSERT INTO course_time (
                            cno,
                            sem,
                            course_time
                        )
                        VALUES (
                            'A0004',
                            1112,
                            '四567'
                        );

INSERT INTO course_time (
                            cno,
                            sem,
                            course_time
                        )
                        VALUES (
                            'A0005',
                            1112,
                            '五234'
                        );

INSERT INTO course_time (
                            cno,
                            sem,
                            course_time
                        )
                        VALUES (
                            'A0006',
                            1112,
                            '三56'
                        );

INSERT INTO course_time (
                            cno,
                            sem,
                            course_time
                        )
                        VALUES (
                            'A0007',
                            1112,
                            '三234'
                        );

INSERT INTO course_time (
                            cno,
                            sem,
                            course_time
                        )
                        VALUES (
                            'A0002',
                            1112,
                            '二34'
                        );


-- Table: curriculum_field
CREATE TABLE IF NOT EXISTS curriculum_field (
    cno              TEXT NOT NULL,
    curriculum_field TEXT NOT NULL,
    PRIMARY KEY (
        cno,
        curriculum_field
    ),
    FOREIGN KEY (
        cno
    )
    REFERENCES course (course_no) 
);

INSERT INTO curriculum_field (
                                 cno,
                                 curriculum_field
                             )
                             VALUES (
                                 'A0001',
                                 '理論數學'
                             );

INSERT INTO curriculum_field (
                                 cno,
                                 curriculum_field
                             )
                             VALUES (
                                 'A0002',
                                 '人工智慧'
                             );

INSERT INTO curriculum_field (
                                 cno,
                                 curriculum_field
                             )
                             VALUES (
                                 'A0003',
                                 '統計推論'
                             );

INSERT INTO curriculum_field (
                                 cno,
                                 curriculum_field
                             )
                             VALUES (
                                 'A0004',
                                 '基礎知識'
                             );

INSERT INTO curriculum_field (
                                 cno,
                                 curriculum_field
                             )
                             VALUES (
                                 'A0005',
                                 '基礎知識'
                             );

INSERT INTO curriculum_field (
                                 cno,
                                 curriculum_field
                             )
                             VALUES (
                                 'A0006',
                                 '人文思想'
                             );

INSERT INTO curriculum_field (
                                 cno,
                                 curriculum_field
                             )
                             VALUES (
                                 'A0007',
                                 '資料科學'
                             );

INSERT INTO curriculum_field (
                                 cno,
                                 curriculum_field
                             )
                             VALUES (
                                 'A0002',
                                 '基礎知識'
                             );

INSERT INTO curriculum_field (
                                 cno,
                                 curriculum_field
                             )
                             VALUES (
                                 'A0003',
                                 '財務工程'
                             );

INSERT INTO curriculum_field (
                                 cno,
                                 curriculum_field
                             )
                             VALUES (
                                 'A0007',
                                 '人工智慧'
                             );


-- Table: enroll
CREATE TABLE IF NOT EXISTS enroll (
    sno           INTEGER NOT NULL
                          REFERENCES student (student_no),
    cno           TEXT    NOT NULL,
    sem           INTEGER NOT NULL,
    select_result TEXT    CHECK (select_result IN ('中選', '落選', '人工加選') ) 
                          NOT NULL,
    PRIMARY KEY (
        sno,
        cno,
        sem
    )
);

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       1,
                       'A0001',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       1,
                       'A0003',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       1,
                       'A0004',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       1,
                       'A0006',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       1,
                       'A0007',
                       1112,
                       '落選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       2,
                       'A0001',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       2,
                       'A0004',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       2,
                       'A0005',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       2,
                       'A0006',
                       1112,
                       '落選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       3,
                       'A0001',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       3,
                       'A0002',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       3,
                       'A0005',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       3,
                       'A0006',
                       1112,
                       '落選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       4,
                       'A0001',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       4,
                       'A0002',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       4,
                       'A0003',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       4,
                       'A0004',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       4,
                       'A0005',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       4,
                       'A0006',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       5,
                       'A0001',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       5,
                       'A0002',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       5,
                       'A0004',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       6,
                       'A0001',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       6,
                       'A0003',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       6,
                       'A0006',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       7,
                       'A0001',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       7,
                       'A0002',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       7,
                       'A0004',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       7,
                       'A0006',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       8,
                       'A0001',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       8,
                       'A0002',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       8,
                       'A0003',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       8,
                       'A0004',
                       1112,
                       '落選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       8,
                       'A0006',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       8,
                       'A0007',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       9,
                       'A0002',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       9,
                       'A0005',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       9,
                       'A0006',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       10,
                       'A0002',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       10,
                       'A0003',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       10,
                       'A0006',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       10,
                       'A0007',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       11,
                       'A0002',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       11,
                       'A0003',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       11,
                       'A0006',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       11,
                       'A0007',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       12,
                       'A0003',
                       1112,
                       '落選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       12,
                       'A0005',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       12,
                       'A0006',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       13,
                       'A0003',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       13,
                       'A0004',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       13,
                       'A0007',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       14,
                       'A0003',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       14,
                       'A0006',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       15,
                       'A0003',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       15,
                       'A0006',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       16,
                       'A0003',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       16,
                       'A0007',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       17,
                       'A0003',
                       1112,
                       '人工加選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       17,
                       'A0007',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       18,
                       'A0005',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       19,
                       'A0005',
                       1112,
                       '中選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       20,
                       'A0006',
                       1112,
                       '落選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       21,
                       'A0006',
                       1112,
                       '落選'
                   );

INSERT INTO enroll (
                       sno,
                       cno,
                       sem,
                       select_result
                   )
                   VALUES (
                       22,
                       'A0007',
                       1112,
                       '中選'
                   );


-- Table: semester_course
CREATE TABLE IF NOT EXISTS semester_course (
    course_no       TEXT        NOT NULL
                                REFERENCES course (course_no),
    semester        INTEGER     NOT NULL,
    course_building TEXT (20)   NOT NULL,
    course_room     TEXT (20)   NOT NULL,
    course_limit    INTEGER (3) NOT NULL,
    course_status   TEXT        NOT NULL
                                CHECK (course_status IN ('開課', '停開') ),
    PRIMARY KEY (
        course_no,
        semester
    ),
    FOREIGN KEY (
        course_no
    )
    REFERENCES course (course_no) 
);

INSERT INTO semester_course (
                                course_no,
                                semester,
                                course_building,
                                course_room,
                                course_limit,
                                course_status
                            )
                            VALUES (
                                'A0001',
                                1112,
                                '工程一館',
                                'K205',
                                50,
                                '開課'
                            );

INSERT INTO semester_course (
                                course_no,
                                semester,
                                course_building,
                                course_room,
                                course_limit,
                                course_status
                            )
                            VALUES (
                                'A0002',
                                1112,
                                '工程五館',
                                'L102',
                                50,
                                '開課'
                            );

INSERT INTO semester_course (
                                course_no,
                                semester,
                                course_building,
                                course_room,
                                course_limit,
                                course_status
                            )
                            VALUES (
                                'A0003',
                                1112,
                                '鴻經館',
                                'M-605',
                                50,
                                '開課'
                            );

INSERT INTO semester_course (
                                course_no,
                                semester,
                                course_building,
                                course_room,
                                course_limit,
                                course_status
                            )
                            VALUES (
                                'A0004',
                                1112,
                                '管理二館',
                                'I1-018',
                                50,
                                '開課'
                            );

INSERT INTO semester_course (
                                course_no,
                                semester,
                                course_building,
                                course_room,
                                course_limit,
                                course_status
                            )
                            VALUES (
                                'A0005',
                                1112,
                                '管理二館',
                                'I1-304',
                                50,
                                '開課'
                            );

INSERT INTO semester_course (
                                course_no,
                                semester,
                                course_building,
                                course_room,
                                course_limit,
                                course_status
                            )
                            VALUES (
                                'A0006',
                                1112,
                                '綜教館',
                                'O-214',
                                100,
                                '開課'
                            );

INSERT INTO semester_course (
                                course_no,
                                semester,
                                course_building,
                                course_room,
                                course_limit,
                                course_status
                            )
                            VALUES (
                                'A0007',
                                1112,
                                '工程五館',
                                'L102',
                                50,
                                '開課'
                            );


-- Table: student
CREATE TABLE IF NOT EXISTS student (
    student_no     INTEGER     PRIMARY KEY AUTOINCREMENT
                               NOT NULL,
    student_name   TEXT (20)   NOT NULL,
    student_dept   TEXT (30)   NOT NULL,
    student_grade  INTEGER (1) NOT NULL,
    student_class  TEXT (1)    NOT NULL,
    student_status TEXT        NOT NULL
                               CHECK (student_status IN ('在學', '休學', '退學') ) 
                               DEFAULT ('在學') 
);

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        1,
                        '張飛',
                        '數學系',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        2,
                        '孫尚香',
                        '數學系',
                        1,
                        'A',
                        '休學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        3,
                        '周瑜',
                        '數學系',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        4,
                        '黃蓋',
                        '數學系',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        5,
                        '趙雲',
                        '數學系',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        6,
                        '關興',
                        '數學系',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        7,
                        '夏侯惇',
                        '數學系',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        8,
                        '龐統',
                        '資訊工程系',
                        1,
                        'A',
                        '休學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        9,
                        '關羽',
                        '資訊工程系',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        10,
                        '華雄',
                        '資訊工程研究所',
                        1,
                        'A',
                        '退學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        11,
                        '華陀',
                        '資訊工程研究所',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        12,
                        '劉備',
                        '資訊管理系',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        13,
                        '呂布',
                        '資訊工程研究所',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        14,
                        '諸葛亮',
                        '資訊工程研究所',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        15,
                        '呂蒙',
                        '資訊工程研究所',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        16,
                        '圖靈',
                        '數學系碩士班',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        17,
                        '巴斯卡',
                        '數學系碩士班',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        18,
                        '大喬',
                        '資訊工程系',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        19,
                        '甘寧',
                        '資訊工程系',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        20,
                        '司馬昭',
                        '資訊工程系',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        21,
                        '馬超',
                        '資訊工程系',
                        1,
                        'A',
                        '在學'
                    );

INSERT INTO student (
                        student_no,
                        student_name,
                        student_dept,
                        student_grade,
                        student_class,
                        student_status
                    )
                    VALUES (
                        22,
                        '郭嘉',
                        '資訊工程研究所',
                        1,
                        'A',
                        '在學'
                    );


-- Table: takes
CREATE TABLE IF NOT EXISTS takes (
    sno           INTEGER     NOT NULL,
    cno           TEXT        NOT NULL,
    sem           INTEGER     NOT NULL,
    course_score  INTEGER (3) DEFAULT NULL,
    feedback_rank TEXT        CHECK (feedback_rank IN ('1', '2', '3', '4', '5') ) 
                              DEFAULT NULL,
    PRIMARY KEY (
        sno,
        cno,
        sem
    ),
    FOREIGN KEY (
        sno
    )
    REFERENCES student (student_no) 
);

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      1,
                      'A0001',
                      1112,
                      77.7,
                      '1'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      2,
                      'A0001',
                      1112,
                      NULL,
                      NULL
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      3,
                      'A0001',
                      1112,
                      56,
                      '2'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      4,
                      'A0001',
                      1112,
                      34,
                      '3'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      5,
                      'A0001',
                      1112,
                      98,
                      '4'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      6,
                      'A0001',
                      1112,
                      55,
                      '5'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      7,
                      'A0001',
                      1112,
                      67,
                      '2'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      8,
                      'A0001',
                      1112,
                      NULL,
                      NULL
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      9,
                      'A0002',
                      1112,
                      66,
                      '3'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      8,
                      'A0002',
                      1112,
                      NULL,
                      NULL
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      3,
                      'A0002',
                      1112,
                      93,
                      '4'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      4,
                      'A0002',
                      1112,
                      44,
                      '4'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      5,
                      'A0002',
                      1112,
                      49,
                      '5'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      7,
                      'A0002',
                      1112,
                      78,
                      '3'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      10,
                      'A0002',
                      1112,
                      NULL,
                      NULL
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      11,
                      'A0002',
                      1112,
                      74,
                      '5'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      8,
                      'A0003',
                      1112,
                      NULL,
                      NULL
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      1,
                      'A0003',
                      1112,
                      46,
                      '5'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      4,
                      'A0003',
                      1112,
                      76,
                      '4'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      6,
                      'A0003',
                      1112,
                      87,
                      '5'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      10,
                      'A0003',
                      1112,
                      NULL,
                      NULL
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      13,
                      'A0003',
                      1112,
                      76,
                      '4'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      11,
                      'A0003',
                      1112,
                      80,
                      '5'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      14,
                      'A0003',
                      1112,
                      78,
                      '3'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      15,
                      'A0003',
                      1112,
                      65,
                      '4'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      16,
                      'A0003',
                      1112,
                      99,
                      '3'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      17,
                      'A0003',
                      1112,
                      69,
                      '1'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      1,
                      'A0004',
                      1112,
                      56,
                      '3'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      2,
                      'A0004',
                      1112,
                      NULL,
                      NULL
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      4,
                      'A0004',
                      1112,
                      67.5,
                      '5'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      5,
                      'A0004',
                      1112,
                      78,
                      '4'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      7,
                      'A0004',
                      1112,
                      89,
                      '2'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      13,
                      'A0004',
                      1112,
                      45,
                      '5'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      9,
                      'A0005',
                      1112,
                      68.7,
                      '1'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      18,
                      'A0005',
                      1112,
                      63,
                      '4'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      19,
                      'A0005',
                      1112,
                      46,
                      '5'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      2,
                      'A0005',
                      1112,
                      NULL,
                      NULL
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      3,
                      'A0005',
                      1112,
                      78,
                      '2'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      4,
                      'A0005',
                      1112,
                      87,
                      '3'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      12,
                      'A0005',
                      1112,
                      96,
                      '2'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      9,
                      'A0006',
                      1112,
                      76,
                      '4'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      8,
                      'A0006',
                      1112,
                      NULL,
                      NULL
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      1,
                      'A0006',
                      1112,
                      34,
                      '3'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      4,
                      'A0006',
                      1112,
                      80,
                      '4'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      6,
                      'A0006',
                      1112,
                      62,
                      '5'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      7,
                      'A0006',
                      1112,
                      60,
                      '3'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      12,
                      'A0006',
                      1112,
                      56,
                      '5'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      10,
                      'A0006',
                      1112,
                      NULL,
                      NULL
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      11,
                      'A0006',
                      1112,
                      98,
                      '4'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      14,
                      'A0006',
                      1112,
                      55,
                      '5'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      15,
                      'A0006',
                      1112,
                      78,
                      '5'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      10,
                      'A0007',
                      1112,
                      NULL,
                      NULL
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      13,
                      'A0007',
                      1112,
                      79,
                      '5'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      22,
                      'A0007',
                      1112,
                      87,
                      '4'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      11,
                      'A0007',
                      1112,
                      68,
                      '3'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      8,
                      'A0007',
                      1112,
                      NULL,
                      NULL
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      16,
                      'A0007',
                      1112,
                      99,
                      '3'
                  );

INSERT INTO takes (
                      sno,
                      cno,
                      sem,
                      course_score,
                      feedback_rank
                  )
                  VALUES (
                      17,
                      'A0007',
                      1112,
                      69,
                      '1'
                  );


-- Table: teach
CREATE TABLE IF NOT EXISTS teach (
    cno TEXT    NOT NULL,
    sem INTEGER NOT NULL,
    tno INTEGER NOT NULL,
    PRIMARY KEY (
        cno,
        sem,
        tno
    ),
    FOREIGN KEY (
        cno,
        sem
    )
    REFERENCES semester_course (course_no,
    semester),
    FOREIGN KEY (
        tno
    )
    REFERENCES teacher (teacher_no) 
);

INSERT INTO teach (
                      cno,
                      sem,
                      tno
                  )
                  VALUES (
                      'A0001',
                      1112,
                      1
                  );

INSERT INTO teach (
                      cno,
                      sem,
                      tno
                  )
                  VALUES (
                      'A0002',
                      1112,
                      2
                  );

INSERT INTO teach (
                      cno,
                      sem,
                      tno
                  )
                  VALUES (
                      'A0003',
                      1112,
                      3
                  );

INSERT INTO teach (
                      cno,
                      sem,
                      tno
                  )
                  VALUES (
                      'A0004',
                      1112,
                      4
                  );

INSERT INTO teach (
                      cno,
                      sem,
                      tno
                  )
                  VALUES (
                      'A0005',
                      1112,
                      5
                  );

INSERT INTO teach (
                      cno,
                      sem,
                      tno
                  )
                  VALUES (
                      'A0006',
                      1112,
                      6
                  );

INSERT INTO teach (
                      cno,
                      sem,
                      tno
                  )
                  VALUES (
                      'A0007',
                      1112,
                      7
                  );

INSERT INTO teach (
                      cno,
                      sem,
                      tno
                  )
                  VALUES (
                      'A0003',
                      1112,
                      8
                  );


-- Table: teacher
CREATE TABLE IF NOT EXISTS teacher (
    teacher_no   INTEGER   NOT NULL
                           PRIMARY KEY AUTOINCREMENT,
    teacher_name TEXT (20) NOT NULL
);

INSERT INTO teacher (
                        teacher_no,
                        teacher_name
                    )
                    VALUES (
                        1,
                        '岳飛'
                    );

INSERT INTO teacher (
                        teacher_no,
                        teacher_name
                    )
                    VALUES (
                        2,
                        '陸羽'
                    );

INSERT INTO teacher (
                        teacher_no,
                        teacher_name
                    )
                    VALUES (
                        3,
                        '項羽'
                    );

INSERT INTO teacher (
                        teacher_no,
                        teacher_name
                    )
                    VALUES (
                        4,
                        '孔丘'
                    );

INSERT INTO teacher (
                        teacher_no,
                        teacher_name
                    )
                    VALUES (
                        5,
                        '莊周'
                    );

INSERT INTO teacher (
                        teacher_no,
                        teacher_name
                    )
                    VALUES (
                        6,
                        '巴哈'
                    );

INSERT INTO teacher (
                        teacher_no,
                        teacher_name
                    )
                    VALUES (
                        7,
                        '達文西'
                    );

INSERT INTO teacher (
                        teacher_no,
                        teacher_name
                    )
                    VALUES (
                        8,
                        '劉邦'
                    );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
