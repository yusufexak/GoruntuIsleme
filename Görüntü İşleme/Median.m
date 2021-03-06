function [resim2] = Median( resim)
filtreBoyutu=3;

[row,col,katman]=size(resim);
if(katman>1)
    resim=rgb2gray(resim);
end

genisleme=(filtreBoyutu-1)/2+1;
baslama=((filtreBoyutu-1)/2);

resim2=zeros(row+genisleme,col+genisleme);  
[row1,col1]=size(resim2);

for i=2:row1-genisleme
    for j=2:col1-genisleme
        resim2(i,j)=resim(i,j);
    end
end
for y=2:row1-baslama
  for x=2:col1-baslama
        komsu=resim2((y-baslama):y+baslama,(x-baslama):x+baslama);
        siraliVektor=sort(komsu(:));
        yeniDeger=median(siraliVektor);
        resim2(y,x)=yeniDeger;
  end
end
resim2=uint8(resim2);
end

