clc
clear
close all

%Lab4-2.d
%Goian Tudor George, IE2, gr923/2


%   for Geo(p)
p = 0.35;
S = 10;

x = zeros(1,S);
for i=1:S
    while rand >= p
        %we increase if it's a failure
        x(i) = x(i)+1;
    end
end

unique_elements = unique(x);
fr = zeros(1,length(unique_elements));
for j = 1:length(unique_elements)
    fr(j) = sum(x == unique_elements(j));
end

[unique_elements; fr/S; geopdf(unique_elements,p)];

%Pascal
% the sum of n independent Geo(p)vars
n = 5; %nr successes
values = zeros(1,S);
%we will keep S and p from above

for i = 1:S
    nr_successes = 0;
    while nr_successes < n
        if rand < p
            %if success
            nr_successes = nr_successes+1;
        else
            %if failure
            values(i) = values(i)+1;
        end
    end
end

U = unique(values);
fr_rel = zeros(2,length(U));

for j = 1:length(U)
    fr_rel(1,j) = U(j);
    fr_rel(2,j) = sum(values==U(j));
end

[values;nbinpdf(values,3,p)];
[fr_rel; fr_rel(2,:)/S; nbinpdf(fr_rel(1,:),3,p)]





