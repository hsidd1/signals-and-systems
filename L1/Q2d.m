%q2 d
opts = detectImportOptions('course_grades_2023.xlsx');
opts = setvartype(opts, {'ID_Number', 'Name'}, 'string');
table = readtable('course_grades_2023.xlsx', opts);

X = struct;
% Name	ID_Number	Lab_1	Lab_2	Lab_3	Lab_4	Midterm	Exam_1	Exam_2	Exam_3	Exam_4

X(1).Name = "Hamza Siddiqui";
X(1).ID_Number = 400407170;
X(1).Lab_1 = 999999;
X(1).Lab_2 = 999999;
X(1).Lab_3 = 999999;
X(1).Lab_4 = 999999;
X(1).Midterm = 999999;
X(1).Exam_1 = 999999;
X(1).Exam_2 = 999999;
X(1).Exam_3 = 999999;
X(1).Exam_4 = 999999;

X(2).Name = "Johnnathan Gershkovich";
X(2).ID_Number = 444;
X(2).Lab_1 = 999999;
X(2).Lab_2 = 999999;
X(2).Lab_3 = 999999;
X(2).Lab_4 = 999999;
X(2).Midterm = 999999;
X(2).Exam_1 = 999999;
X(2).Exam_2 = 999999;
X(2).Exam_3 = 999999;
X(2).Exam_4 = 999999;

T = struct2table(X);
New_table = [table;T];
disp(New_table);