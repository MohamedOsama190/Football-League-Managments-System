%football managment system league
%Mohamed Osama Mohamed Ahmed Zein eldin
%1190234
%mohamedosos266@gmail.com
function  screenout(firsttable,secondtable,thirdtable)
%this function disp the table
disp('1)display the first table on screen')
disp('2)display the second table on screen')
disp('3)display the third table on screen')
chooseone=input('choose from the previous choices');
if chooseone==1
    clc
    fprintf('Team ID  Player ID\n')
    fprintf('%5d\t%5d\n',firsttable(:,1),firsttable(:,2))
elseif chooseone==2
    clc
    fprintf('Match ID  HostTeamID  GuestTeamID\n')
    fprintf('%5d\t%5d\t%9d\n',secondtable(:,1),secondtable(:,2),secondtable(:,3))
elseif chooseone==3
    clc
    fprintf('Match ID  PlayerID  Goalminute\n')
    fprintf('%5d\t%5d\t%9d\n',thirdtable(:,1),thirdtable(:,2),thirdtable(:,3))
end
end
