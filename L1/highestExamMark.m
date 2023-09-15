%Q2 b
opts = detectImportOptions('course_grades_2023.xlsx');
opts = setvartype(opts, {'ID_Number', 'Name'}, 'string');
table = readtable('course_grades_2023.xlsx', opts);

[name, total_lab_mark] = HEM(table);
fprintf('The student with the highest exam mark is %s with a mark of %d\n', ...
    name, total_lab_mark);

function [name, exam_mark] = HEM(table)
    % extract exams to sum up each row
    vars = ["Exam_1", "Exam_2", "Exam_3", "Exam_4"]; 
    x = table(2:end, :); % exclude first row
    % take sum along second dimension
    total_exam_marks = sum(x{:, vars},2);
    % disp(total_exam_marks);
    % get the highest total exam mark
    [exam_mark, idx] = max(total_exam_marks);
    % get student name who has this mark by table index
    name = x{idx, "Name"};
end