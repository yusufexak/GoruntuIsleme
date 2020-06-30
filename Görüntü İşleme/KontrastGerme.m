function [resim2] =KontrastGerme( resim )
[satir,sutun,katman ]=size(resim);
if(katman>1)
    resim=GriSeviyeDonusum(resim);
end
resim2=zeros(satir ,sutun);
maxp=max(resim(:));
minp=min(resim(:));

resim2=double(resim2);
for i=1:satir
    for j=1:sutun      
        resim2(i,j)=((255/(maxp-minp))*(resim(i,j)-minp));
    end
end
resim2=uint8(resim2);
end


