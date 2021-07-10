function original = exercises25(cipher)
word = split(cipher);
word_head_ch = blanks(length(word));
for i = 1:length(word)
    word_head_ch(i) = word{i}(1);
end
original = word_head_ch;

end