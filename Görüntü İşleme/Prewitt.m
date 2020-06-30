function [resim2] = Prewitt( resim)
filtreBoyutu=3;
[row,col,katman]=size(resim);
if(katman>1)
   resim=rgb2gray(resim);
end
boyut1=(filtreBoyutu-1)/2;
boyut2=((filtreBoyutu-1)/2)+1;
resim=double(resim);
resim2=double(zeros(row-filtreBoyutu-1,col-filtreBoyutu-1));    
filtre1=[-1 -1 -1; 0 0 0; 1 1 1];
filtre2=[-1 0 1; -1 0 1; -1 0 1];
for y=boyut2:row-boyut2
    for x=boyut2:col-boyut2
        komsu=resim((y-boyut1):y+boyut1,x-boyut1:x+boyut1);
        toplam1=0;
        toplam2=0;
        for m=1:filtreBoyutu
            for n=1:filtreBoyutu
                toplam1=toplam1+filtre1(m,n)*komsu(m,n);
            end
        end
        for m=1:filtreBoyutu
            for n=1:filtreBoyutu
                toplam2=toplam2+filtre2(m,n)*komsu(m,n);
            end
        end
        deger=power(toplam1,2)+power(toplam2,2);
        resim2(y-boyut1,x-boyut1)=sqrt(deger);
    end
end
resim2=uint8(resim2);
end