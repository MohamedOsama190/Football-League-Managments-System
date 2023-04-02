%football managment system league
%Mohamed Osama Mohamed Ahmed Zein eldin
%1190234
%mohamedosos266@gmail.com
function y=addonerow2(y)
%this function adds a row to secondtable
[r c]=size(y);
y(r+1,:)=input('enter Match ID,Host team ID and Guest team ID in array');
end