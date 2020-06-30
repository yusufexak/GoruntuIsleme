function [ resim2 ] = HistogramEsitleme( resim )
[satir,sutun,katman]=size(resim);
if(katman>1)
    resim=GriSeviyeDonusum(resim);
end

pikselSayisi=satir*sutun;
r=uint8(zeros(satir,sutun));
deger=zeros(256,1);
top=0;

for i=1:satir
    for j=1:sutun
        k=resim(i,j);
        deger(k+1)=deger(k+1)+1;
    end
end

for i=1:256
    top=top+deger(i);
    kum_ols(i)=top/pikselSayisi;
    r(i)=round(kum_ols(i)*256);
end

for i=1:satir
    for j=1:sutun
        resim2(i,j)=r(resim(i,j)+1);
    end
end

end



