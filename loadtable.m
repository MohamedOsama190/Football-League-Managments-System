%football managment system league
%Mohamed Osama Mohamed Ahmed Zein eldin
%1190234
%mohamedosos266@gmail.com
function [firsttable secondtable thirdtable]=loadtable(firsttable,secondtable,thirdtable)
%this function load tables from excel
disp('1)load table 1')
disp('2)load table 2')
disp('3)load table 3')
number=input('choose 1 or 2 or 3 from the previous table');
if number==1
    clc
    filename=input('enter file name','s');
    whichsheet=input('enter sheet number');
    firsttable=xlsread(filename,whichsheet);
    secondtable=secondtable;
    thirdtable=thirdtable;
elseif number==2
    clc
    filename=input('enter file name','s');
    whichsheet=input('enter sheet number');
    secondtable=xlsread(filename,whichsheet);
    firsttable=firsttable;
    thirdtable=thirdtable;
elseif number==3
    clc
    filename=input('enter file name','s');
    whichsheet=input('enter sheet number');
    thirdtable=xlsread(filename,whichsheet);
    firsttable=firsttable;
    secondtable=secondtable;
end
end
    