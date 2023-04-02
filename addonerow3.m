%football managment system league
%Mohamed Osama Mohamed Ahmed Zein eldin
%1190234
%mohamedosos266@gmail.com
function z=addonerow3(z)
%this function adds a row to thirdtable
[r c]=size(z);
z(r+1,:)=input('enter Match ID,Player ID and Goal Minute ID in array');
end