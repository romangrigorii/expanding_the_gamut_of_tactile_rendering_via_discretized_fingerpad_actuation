co = 2^14 - 1;
%prox = [[0 1 1 1 0 0 0 0 0 0 0 0 0 0];[1 0 0 1 1 0 0 0 0 0 0 0 0 0];[1 0 0 1 0 1 1 0 0 0 0 0 0 0];[1 1 1 0 1 0 1 1 0 0 0 0 0 0];[0 1 0 1 0 0 0 1 1 0 0 0 0 0];[0 0 1 0 0 0 1 0 0 1 0 0 0 0];[0 0 1 1 0 1 0 1 0 1 1 0 0 0];[0 0 0 1 1 0 1 0 1 0 1 1 0 0];[0 0 0 0 1 0 0 1 0 0 0 1 0 0];[0 0 0 0 0 1 1 0 0 0 1 1 0 0];[0 0 0 0 0 0 1 1 0 1 0 1 1 1];[0 0 0 0 0 0 0 1 1 0 1 0 0 1];[0 0 0 0 0 0 0 0 0 1 1 0 0 1];[0 0 0 0 0 0 0 0 0 0 1 1 1 0]];

prox = [[0 1 1 1 0 0 0 0 0 0 0 0 0 0];
        [0 0 0 1 1 0 0 0 0 0 0 0 0 0];
        [0 0 0 1 0 1 1 0 0 0 0 0 0 0];
        [0 0 0 0 1 0 1 1 0 0 0 0 0 0];
        [0 0 0 0 0 0 0 1 1 0 0 0 0 0];
        [0 0 0 0 0 0 1 0 0 1 0 0 0 0];
        [0 0 0 0 0 0 0 1 0 1 1 0 0 0];
        [0 0 0 0 0 0 0 0 1 0 1 1 0 0];
        [0 0 0 0 0 0 0 0 0 0 0 1 0 0];
        [0 0 0 0 0 0 0 0 0 0 1 0 1 0];
        [0 0 0 0 0 0 0 0 0 0 0 1 1 1];
        [0 0 0 0 0 0 0 0 0 0 0 0 0 1];
        [0 0 0 0 0 0 0 0 0 0 0 0 0 1];
        [0 0 0 0 0 0 0 0 0 0 0 0 0 0]];
    
proff = zeros(co,14);  
sm = sum(prox.');

for c = 0:co
   proff(c+1,:) = de2bi(c,14);
end
    
proxmat = zeros(1,co+1);
x = 1:14;

for c = 1:co+1
    if sum(proff(c,:)==1) == 7
%         for cc = 1:14
%             proxmat(c) = proxmat(c) + sum(proff(c,cc) ~= proff(cc,prox(cc,:) == 1));
%         end
        proxmat(c) = countxy(prox,proff(c,:));
    end
end


%% plotting
%close all

a = figure;
a.Position(3) = 300;
a.Position(4) = 300;
%a.Position(1) = -800;
u = (proxmat==7).*(1:(co+1));

u = u(u~=0); 
pmat = proff(u(1),:);
xx = [2,4,1,3,5,0,2,4,6,1,3,5,2,4];
yy = [2,2,1,1,1,0,0,0,0,-1,-1,-1,-2,-2];


hold on

for i = 1:14
    if pmat(i) == 1
        a = plot(xx(i),yy(i),'.');
        a.Color = [0,0,0];
        a.MarkerSize = 23;
    else
        a = plot(xx(i),yy(i),'o');
        a.Color = [0,0,0];
        a.MarkerSize = 6;
    end
end

axis([-1 7 -3 3])
set(gca,'XColor', 'none','YColor','none')
set(gcf,'color','w');

%% computing adjacent deformation

prox = [[0 1 1 1 0 0 0 0 0 0 0 0 0 0];
        [0 0 0 1 1 0 0 0 0 0 0 0 0 0];
        [0 0 0 1 0 1 1 0 0 0 0 0 0 0];
        [0 0 0 0 1 0 1 1 0 0 0 0 0 0];
        [0 0 0 0 0 0 0 1 1 0 0 0 0 0];
        [0 0 0 0 0 0 1 0 0 1 0 0 0 0];
        [0 0 0 0 0 0 0 1 0 1 1 0 0 0];
        [0 0 0 0 0 0 0 0 1 0 1 1 0 0];
        [0 0 0 0 0 0 0 0 0 0 0 1 0 0];
        [0 0 0 0 0 0 0 0 0 0 1 1 0 0];
        [0 0 0 0 0 0 0 0 0 0 0 1 1 1];
        [0 0 0 0 0 0 0 0 0 0 0 0 0 1];
        [0 0 0 0 0 0 0 0 0 0 0 0 0 1];
        [0 0 0 0 0 0 0 0 0 0 0 0 0 0]];

 %% test some funcs
 
 countt = [];
 
 proff = [[0,0,0,0,0,0,0,1,1,1,1,1,1,1];[1,0,0,0,1,0,1,0,0,0,1,1,1,1];[0,1,1,0,0,0,1,1,1,1,0,0,0,1]];
 
 A = [0.0187,0.0119,0.0195,0.0147,0.0151,0.0216,0.0172,0.0220,0.0235,0.0160,0.0202,0.0207,0.0156,0.0125]*2.7*.125/40/2/pi*1000;
 
 
 for i = 1:3
     countt(i) = countxy2(A,prox,proff(i,:))/2;
 end
 