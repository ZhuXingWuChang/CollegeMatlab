function grade = switchletgrade(quiz)

if quiz<0 || quiz>10
    grade = 'X';
else
    switch quiz
        case {10, 9} % cellÊý×é
            grade = 'A';
        case 8
            grade = 'B';
        case 7
            grade = 'C';
        case 6
            grade = 'D';
        otherwise
            grade = 'F';
    end
end

end