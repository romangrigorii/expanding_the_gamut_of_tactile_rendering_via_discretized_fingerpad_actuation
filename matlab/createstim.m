% st = {};
% st{1} = [.0000001,.0000001,.0000001,.0000001,.0000001,.0000001,.0000001,.0000001,.0000001,.0000001,.0000001,.0000001,.0000001,.0000001];
% st{2} = [.0000001,1.0472,.0000001,1.0472,2.0944,.0000001,1.0472,2.0944,3.14159,1.0472,2.0944,3.14159,2.0944,3.14159];
% st{3} = [1.0472,.0000001,2.0944,1.0472,.0000001,3.14159,2.0944,1.0472,.0000001,3.14159,2.0944,1.0472,3.14159,2.0944];
% st{4} = [6.0302,2.1387,3.6773,1.4063,4.7203,1.6028,3.1790,4.3924,5.5977,6.0274,3.4383,0.8710,3.9380,1.6180];
% st{5} = [0,1,1,0,0,0,1,1,1,1,0,0,0,1];

%%

freqs0 = [5.0001,10.0001,20.0001,40.0001,80.0001];
amps0 = [.5,.4,.3,.25,.2];

stim0 = [];
pairs0 = [1,1,1,1,1,2,2,2,2,2];
freqo0 = [1,1,2,2,3,3,4,4,5,5];
comb0 = [[1,5];[5,6]];
ord0 = [1,6,3,9,2,7,4,8,5,10];
pos0 = 1 + [3,1,3,1,2,2,3,2,3,1];

for i = 1:10
    if mod(ord0(i),2)
        stim0(i,1:4) = [freqo0(ord0(i)),comb0(pairs0(ord0(i)),1),comb0(pairs0(ord0(i)),1),comb0(pairs0(ord0(i)),1)];
        stim0(i,pos0(i)) = comb0(pairs0(ord0(i)),2);
    else
        stim0(i,1:4) = [freqo0(ord0(i)),comb0(pairs0(ord0(i)),2),comb0(pairs0(ord0(i)),2),comb0(pairs0(ord0(i)),2)];
        stim0(i,pos0(i)) = comb0(pairs0(ord0(i)),1);
    end
end
%%

freqs1 = [5.0001,10.0001,20.0001,40.0001,80.0001];
amps1 = [.5,.4,.3,.25,.2];

stim1 = [];
pairs1 = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2];
freqo1 = [1,1,1,1,1,2,2,2,2,2,3,3,3,3,3,4,4,4,4,4,5,5,5,5,5,1,1,1,1,1,2,2,2,2,2,3,3,3,3,3,4,4,4,4,4,5,5,5,5,5];
comb1 = [[1,5];[5,6]];
ord1 = [38;3;50;44;32;18;11;41;2;42;7;15;20;23;36;26;24;40;30;8;14;21;43;39;16;9;46;17;4;22;31;19;37;45;25;49;13;6;47;48;29;35;27;12;34;5;33;10;28;1];
pos1 = 1 + [3,1,3,1,2,2,3,2,3,1,3,2,2,3,2,1,1,3,1,1,2,3,3,1,2,2,3,1,3,2,2,1,3,2,1,2,1,3,2,1,1,2,1,3,3,3,2,2,1,3];


for i = 1:50
    if mod(ord1(i),2)
        stim1(i,1:4) = [freqo1(ord1(i)),comb1(pairs1(ord1(i)),1),comb1(pairs1(ord1(i)),1),comb1(pairs1(ord1(i)),1)];
        stim1(i,pos1(i)) = comb1(pairs1(ord1(i)),2);
    else
        stim1(i,1:4) = [freqo1(ord1(i)),comb1(pairs1(ord1(i)),2),comb1(pairs1(ord1(i)),2),comb1(pairs1(ord1(i)),2)];
        stim1(i,pos1(i)) = comb1(pairs1(ord1(i)),1);
    end
end

%%
mul2 = .15;
stim2 = [];
trial = 1;
ord2 = [2,1,5,9,7,6,4,8,10,3];
ords = [];
pos2 = [2,3,1,2,2,1,2,3,1,1,3,1,1,2,1,1,2,2,1,2,3,2,2,1,2,3,3,2,3,3,1,1,3,2,1,3,2,3,2,1,1,3,1,3,1,2,1,3,3,1,1,3,3,3,2,2,3,2,3,1,1,2,2,1,1,1,2,2,1,1,2,1,3,3,2,3,3,2,3,2,1,1,3,3,3,2,3,2,3,2,3,2,2,1,2,3,1,3,2,1];
 for i = 1:10
    for s = 1:10
        stim2(trial,1:3) = [0,0,0];
        stim2(trial,pos2(trial)) = ord2(s);
        trial = trial + 1;        
    end    
 end
 
%% 
stim3 = [];
trial = 1;
freqs3 = [40.0001,80.0001,40.0001].';
freqo3 = [1,2,1].'*ones(1,25);
freqo3 = freqo3(:);
amps3= [.25 .2 .25];
astims= 1:10000;
arange = astims/10000;
pos3 = [3,1,2,1,3,2,3,1,1,1,3,3,2,2,1,3,2,2,3,2,1,1,3,1,1,2,1,3,3,2,2,3,3,2,1,3,2,1,2,1,1,3,3,2,1,1,2,3,1,1,3,2,3,2,2,2,1,3,1,3,1,2,2,3,1,3,3,2,2,3,1,2,2,3,1];
pos3 = [pos3,[1,1,1]];
y = 1/3;
lam = 0.0;
b = 15;
a = .3;

for tr = 1:25
    for s = 1:3
        stim3(trial,1:3) = [1,1,1];
        trial = trial + 1;
    end
end

for t = 1:3
    stim3(t,pos3(t)) = 5001;
end
        

%% stim4 = [];

amps4 = [.25 .3];
freqs4 = [40.001,80.001];
delays4 = [2500,5000,7500,10000];
freqo4 = [1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2];
delayo4 = [1,2,3,4,1,2,3,4,1,2,3,4,1,2,3,4,1,2,3,4,1,2,3,4];
stims4 = [1,1,1,1,2,2,2,2,3,3,3,3,1,1,1,1,2,2,2,2,3,3,3,3];
ord4 = [3,23,16,19,5,9,17,11,7,4,24,15,2,8,21,1,10,12,13,14,6,20,18,22];
