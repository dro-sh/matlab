% подкидываем 3 монеты
number_of_runs = 10000;
hits = zeros(1,number_of_runs); 

for n = 1:number_of_runs
    run = [randi([0, 1], 1), randi([0, 1], 1), randi([0, 1], 1)];
    if all(run == run(1))
        hits(n) = 1;
    end
end

[phat,pci] = binofit(sum(hits),number_of_runs,0.05);
disp(pci)

% вычисляем p-value
disp(min(1-binocdf(sum(hits),number_of_runs,0.25),binocdf(sum(hits),number_of_runs,0.25))/2)

[phat,pci] = binofit(sum(all(diff(number_of_runs,1,2)==0,2)),number_of_runs,0.05)
