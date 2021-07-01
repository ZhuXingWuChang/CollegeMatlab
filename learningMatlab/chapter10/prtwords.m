function prtwords(sent)
[word, rest] = strtok(sent);
if ~isempty(rest)
    prtwords(rest)
end
disp(word)
end