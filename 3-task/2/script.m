number_of_runs = 10000;

families = randi(2,number_of_runs,2);
families_with_boys = any(families == 1, 2);
families_with_two_boys = all(families == 1,2);
[phat,pci] = binofit(sum(families_with_two_boys), sum(families_with_boys),0.05);
disp(pci)
