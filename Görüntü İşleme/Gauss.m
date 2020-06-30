function [resim2] = Gauss(resim,s)

[~,~,katman]=size(resim);
if(katman>1)
   resim=rgb2gray(resim);
end
resimD = double(resim);
sigma=s;
boyut = 4;

[X,Y]=meshgrid(-boyut:boyut,-boyut:boyut);

M = size(X,1)-1;

N = size(Y,1)-1;

Temp = -(X.^2+Y.^2)/(2*sigma*sigma);

hesap= exp(Temp)/(2*pi*sigma*sigma);

res=zeros(size(resimD));

resimD = padarray(resimD,[boyut boyut]);

for i = 1:size(resimD,1)-M
    
    for j =1:size(resimD,2)-N
        Temp = resimD(i:i+M,j:j+M).*hesap;
        
        res(i,j)=sum(Temp(:));
    end
    
end

resim2 = uint8(res);
end