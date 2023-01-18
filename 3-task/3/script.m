number_of_runs = 10000;

families = randi(2,number_of_runs,2);
families_without_brothers = ~all(families==1,2);
families_with_diff_kids = any(families==1,2)&any(families==2,2);
families_with_sisters = all(families==2,2);


[~,pci] = binofit(sum(families_with_diff_kids), sum(families_without_brothers),0.05);
disp(pci)

[~,pci] = binofit(sum(families_with_sisters), sum(families_without_brothers),0.05);
disp(pci)
