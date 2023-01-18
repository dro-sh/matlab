number_of_runs = 10000;
hits_first_sister = zeros(1,number_of_runs); 
hits = zeros(1,number_of_runs); 

for n = 1:number_of_runs
    was_boy = 1;
    was_girl = 0;
    second_kid = randi([0, 1], 1);
    if was_boy ~= second_kid
        hits(n) = 1;
    end
end

disp(min(1-binocdf(sum(hits),number_of_runs,0.5),binocdf(sum(hits),number_of_runs,0.5))/2)
