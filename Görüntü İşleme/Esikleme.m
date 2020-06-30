function [resim2] = Esikleme(resim,esik)
[satir,sutun,katman]=size(resim);
if(katman>1)
    resim=GriSeviyeDonusum(resim);
end
resim2=resim;
for i=1:satir
    for j=1:sutun
        if(resim(i,j)>=esik)
            resim2(i,j)=255;
        else
            resim2(i,j)=0;
        end
    end
end
end
