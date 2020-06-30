function[rlee]=rle(I)

bw=im2bw(I,level);

a=bw'; a=a(:); a=a';
a=double(a);
rlee(1)=a(1); m=2; rlee(m)=1;
for i=1:length(a)-1
    if a(i)==a(i+1)
        rlee(m)=rlee(m)+1;
    else
        m=m+1; rlee(m)=1;     
    end
end
imwrite(rlee,'rle.jpg');
end
