%football managment system league
%Mohamed Osama Mohamed Ahmed Zein eldin
%1190234
%mohamedosos266@gmail.com
function x=addonerow(x)
%this function adds a row to firsttable
[r c]=size(x);
x(r+1,:)=input('enter Team ID and Player ID in array');
end