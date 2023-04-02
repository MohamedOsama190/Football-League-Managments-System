%football managment system league
%Mohamed Osama Mohamed Ahmed Zein eldin
%1190234
%mohamedosos266@gmail.com
function table7=computetable7(secondtable,thirdtable,firsttable)
table7=secondtable;
[r c]=size(firsttable(:,2));
[R C]=size(thirdtable(:,2));
for i=1:r
    for j=1:R
        if firsttable(i,2)==thirdtable(j,2)
            array(j,1)=firsttable(i,1);
        end
    end
end
[t y]=size(array);
[g h]=size(secondtable);
for i=1:g
    c=0;
    for j=1:t
        if secondtable(i,2)==array(j,1)
           if secondtable(i,1)==thirdtable(j,1)
            c=c+1;
            table7(i,4)=c;
        end
        end
    end
    if c==0
        table7(i,4)=0;
    end
end
for i=1:g
    c=0;
    for j=1:t
        if secondtable(i,3)==array(j,1)
        if secondtable(i,1)==thirdtable(j,1)
            c=c+1;
            table7(i,5)=c;
        end
        end
    end
end
disp('1)display on screen')
disp('2)write to excel file')
asktheuser=input('choose one from the previous');
if asktheuser==1
clc
fprintf('MatchID  HostTeamID  GuestTeamID  HostTeamGoals  GuestTeamGoals\n')
fprintf('%5d\t%5d\t%10d\t%10d\t%11d\n',table7(:,1),table7(:,2),table7(:,3),table7(:,4),table7(:,5))
elseif asktheuser==2
    enterthename=input('enter the name of file','s');
    whichsheet=input('enter sheet number');
    header={'MatchID','HostTeamID','GuestTeamID','HostTeamGoals','GuestTeamGoals'};
    xlswrite(enterthename,header,whichsheet);
    xlswrite(enterthename,table7,whichsheet,'A2');
end
end
