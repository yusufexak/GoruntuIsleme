function resim2 = Genisleme(resim,mask)
[~,~,katman]=size(resim);
if(katman>1)
    resim=GriSeviyeDonusum(resim);
end
[R ,C] = size(resim);
[R1, C1] = size(mask);
xpad = R1-1;
ypad = C1-1;
Ipad = padarray(resim, [xpad ypad], 0);
resim2 = zeros(R+(R1-1),C+(C1-1));
for x = 1: R+(R1-1)
    for y = 1: C+(C1-1)
        Isub = Ipad(x:x+R1-1, y:y+C1-1);
        Iprod = Isub .* mask;
        resim2(x,y) = max(Iprod(:));
    end
end