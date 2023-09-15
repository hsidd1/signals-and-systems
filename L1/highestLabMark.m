% Q2 a
opts = detectImportOptions('course_grades_2023.xlsx');
opts = setvartype(opts, {'ID_Number', 'Name'}, 'string');
table = readtable('course_grades_2023.xlsx', opts);

[name, total_lab_mark] = HLM(table);
fprintf('The student with the highest lab mark is %s with a mark of %d\n', ...
    name, total_lab_mark);

function [name, total_lab_mark] = HLM(table)
    % extract labs to sum up each row
    vars = ["Lab_1","Lab_2","Lab_3","Lab_4"]; 
    x = table(2:end, :); % exclude first row
    % take sum along second dimension
    total_lab_mark = sum(x{:, vars},2);
    % disp(total_lab_mark);
    % get the highest total lab mark
    [total_lab_mark, idx] = max(total_lab_mark);
    % get student name who has this mark by table index
    name = x{idx, "Name"};
end
