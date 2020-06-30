function [resim2] = Laplace( resim)
filtreBoyutu=3;
[row,col,katman]=size(resim);
if(katman>1)
   resim=rgb2gray(resim);
end
boyut1=(filtreBoyutu-1)/2;
boyut2=((filtreBoyutu-1)/2)+1;
resim=double(resim);
resim2=double(zeros(row-filtreBoyutu-1,col-filtreBoyutu-1));    
filtre=[0 1 0; 1 -4 1; 0 1 0];
for y=boyut2:row-boyut2
    for x=boyut2:col-boyut2
        komsu=resim((y-boyut1):y+boyut1,x-boyut1:x+boyut1);
        
        toplam=0;
        for m=1:filtreBoyutu
            for n=1:filtreBoyutu
                toplam=toplam+filtre(m,n)*komsu(m,n);
            end
        end
        resim2(y-boyut1,x-boyut1)=toplam;
    end
end
resim2=uint8(resim2);
end