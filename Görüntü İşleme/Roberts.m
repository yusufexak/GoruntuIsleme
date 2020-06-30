function [resim2] = Roberts( resim)
[~,~,katman]=size(resim);
if(katman>1)
   resim=rgb2gray(resim);
end
res = uint8(resim);  
res = double(res); 
  
resim2 = zeros(size(res)); 

Mx = [1 0; 0 -1]; 
My = [0 1; -1 0]; 
 
for i = 1:size(res, 1) - 1 
    for j = 1:size(res, 2) - 1 

        Gx = sum(sum(Mx.*res(i:i+1, j:j+1))); 
        Gy = sum(sum(My.*res(i:i+1, j:j+1))); 

        resim2(i, j) = sqrt(Gx.^2 + Gy.^2); 
         
    end
end
resim2 = uint8(resim2); 
end
