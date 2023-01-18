number_of_runs = 10000;
hits = zeros(1,number_of_runs); 

for n = 1:number_of_runs
    first_kid = 1;
    second_kid = randi([0, 1], 1);
    if first_kid == second_kid
        hits(n) = 1;
    end
end

[phat,pci] = binofit(sum(hits),number_of_runs,0.05);
disp(pci)
