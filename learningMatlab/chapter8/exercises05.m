clear,clc
names = {'Harry', 'Xavier', 'Sue'};
verbs = {'loves', 'eats'};
nouns = {'baseballs', 'rocks', 'sushi'};
disp([names{randi(length(names))}, ' ', ...
    verbs{randi(length(verbs))}, ' ', ...
    nouns{randi(length(nouns))}])