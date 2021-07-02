function [atm, psi] = convertbar(bar)
ATM_PER_BAR = 0.9869;
PSI_PER_BAR = 14.504;
atm = bar*ATM_PER_BAR;
psi = bar*PSI_PER_BAR;
end