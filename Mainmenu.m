%football managment system league
%Mohamed Osama Mohamed Ahmed Zein eldin
%1190234
%mohamedosos266@gmail.com
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           clear
firsttable=[];
secondtable=[];
thirdtable=[];
while 1
    clc
    disp('1)Add a row to firsttable which contains two elements (Teams ID) and (Players ID)')
    disp('2)Add a row to secondtable which contains three elements (Matches ID),(Host Team ID),(Guest teams ID)')
    disp('3)Add a row to thirdtable which contanis three elements (Matches ID),(Players ID),(Goal minute)')
    disp('4)Load firsttable or secondtable or thirdtable')
    disp('5)save firsttable or secondtable or thirdtable')
    disp('6)Display firsttable or secondtable or thirdtable')
    disp('7)compute a table for scores of each match')
    disp('8)compute a table for the points of each team')
    disp('9)compute a table showing how many goals scored by each player')
    disp('10)Exit the program')
s=input('choose one from the menu:');
if s==1
    clc
    disp('you chose the first option')
    firsttable=addonerow(firsttable);
    anynumber=input('press on any number to return back to menu');
elseif s==2
    clc
     disp('you chose the second option')
      secondtable=addonerow2(secondtable);
      anynumber=input('press on any number to return back to menu');
elseif s==3 
    clc
    disp('you chose the third option')
    thirdtable=addonerow3(thirdtable);
    anynumber=input('press on any number to return back to menu');
elseif s==4
    clc
    disp('you chose the fourth option')
    [firsttable secondtable thirdtable]=loadtable(firsttable,secondtable,thirdtable);
    anynumber=input('press on any number to return back to menu') ; 
elseif s==5
    clc
    disp('you chose the fifth option')
    savetable(firsttable,secondtable,thirdtable);
    anynumber=input('press on any number to return back to menu');
elseif s==6
    clc
    disp('you chose the sixth option')
     screenout(firsttable,secondtable,thirdtable);
     anynumber=input('press on any number to return back to menu'); 
elseif s==7
    clc
    disp('you chose the seventh option')
    table7=computetable7(secondtable,thirdtable,firsttable);
    anynumber=input('press on any number to return back to menu');
elseif s==8
    clc
    disp('you chose the eighth option')
    table8=computetable8(firsttable,secondtable,thirdtable,table7)
    anynumber=input('press on any number to return back to menu');
   
elseif s==9
    clc
    disp('you chose the ninth option')
    table9=computetable9(firsttable(:,2),thirdtable(:,2));
    anynumber=input('press on any number to return back to menu');
elseif s==10
clc
disp('Good bye')
break
else
    clc
    disp('invalid number')
    anynumber=input('press on any number to return back to menu');
    
            
end
end
    
    
