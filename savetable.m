%football managment system league
%Mohamed Osama Mohamed Ahmed Zein eldin
%1190234
%mohamedosos266@gmail.com
function  savetable(firsttable,secondtable,thirdtable)
%this function saves table 1 or 2 or 3
disp('1)save table 1')
disp('2)save table 2')
disp('3)save table 3')
number=input('choose 1 or 2 or 3 from the previous table');
if number==1
    clc
    entername=input('enter file name to save','s');
    whichsheet=input('enter sheet number');
    header={'TeamID','PlayerID'};
    xlswrite(entername,header,whichsheet);
    xlswrite(entername,firsttable,whichsheet,'A2');
elseif number==2
    clc
    entername=input('enter file name to save','s');
    whichsheet=input('enter sheet number');
    header={'MatchID','HostTeamID','GuestTeamID'};
    xlswrite(entername,header,whichsheet);
    xlswrite(entername,secondtable,whichsheet,'A2');
elseif number==3
    clc
    entername=input('enter file name to save','s');
    whichsheet=input('enter sheet number');
    header={'MatchID','PlayerID','Goalminute'};
    xlswrite(entername,header,whichsheet);
    xlswrite(entername,thirdtable,whichsheet,'A2');
end
end
    