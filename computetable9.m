%football managment system league
%Mohamed Osama Mohamed Ahmed Zein eldin
%1190234
%mohamedosos266@gmail.com
function table9=computetable9(info2,info)
table9(:,1)=info2(:,1);
[r c]=size(info);
for i=1:r
    c=1;
    array(i,1)=info(i,1);
    for j=(i+1):r
        if info(i,1)==info(j,1)
            c=c+1;
            array(i,2)=c;
            array(i,1)=info(i,1);
        else
            array(i,1)=info(i,1);
        end
    end
    if c==1
       array(i,2)=c;
    end
end
[R C]=size(info2);
f=1;
for k=1:R
   for L=1:r
    if info2(k,1)==array(L,1)
        table9(k,2)=array(L,2);
        f=f+1;
        break
    end    
   end
   if f==1;
       table9(k,2)=0; 
   end

end
disp('1)display on screen')
disp('2)write to excel file')
asktheuser=input('choose one from the previous');
if asktheuser==1
    clc
    fprintf('PlayerID  Goalsscored\n')
    fprintf('%5d\t%5d\n',table9(:,1),table9(:,2))
elseif asktheuser==2
    enterthename=input('enter the name of file','s');
    whichsheet=input('enter sheet number');
    header={'PlayerID','Goals scored'};
    xlswrite(enterthename,header,whichsheet);
    xlswrite(enterthename,table9,whichsheet,'A2');
end
end
