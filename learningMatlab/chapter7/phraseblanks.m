clear,clc
phrasemat = char('Hello and how are you?', ...
    'Hi there everyone!', 'How is it going?', 'Whazzup?');
[r,c] = size(phrasemat);
for i = 1:r
    howmany = countblanks(phrasemat(i,:));
    fprintf('Phrase %d had %d blanks\n',i,howmany);
end