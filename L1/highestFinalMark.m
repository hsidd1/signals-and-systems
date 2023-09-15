%Q2 c
opts = detectImportOptions('course_grades_2023.xlsx');
opts = setvartype(opts, {'ID_Number', 'Name'}, 'string');
table = readtable('course_grades_2023.xlsx', opts);

[name, final_mark] = HFM(table);
fprintf('The student with the highest final mark is %s with a mark of %d\n', ...
    name, final_mark);

function [name, final_mark] = HFM(table)
disp(table)
    % disp(table{2:end, 3:11})
    final_marks = sum(table{2:end, 3:11}, 2);
    disp(final_marks);
    % get the highest final mark
    [final_mark, idx] = max(final_marks);
    % get student name who has this mark by table index
    name = table{idx+1, "Name"};
end