year = 2013:2017;
pop = [0.9, 1.4, 1.7, 1.3, 1.8];
for i = 1:4
    subplot(1, 4, i)
    barh(year, pop, 0.4+i*.2)
    title(sprintf('Width = %.1f', 0.4+i*.2))
    xlabel('Population(mil)')
    ylabel('Year')
end