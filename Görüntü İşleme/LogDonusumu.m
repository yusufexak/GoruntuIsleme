function [ resim2 ] =LogDonusumu( resim, c)
resim=im2double(resim);
[ ~,~,k]=size(resim);
if(k>1)
    resim=GriSeviyeDonusum(resim);
end

resim2=c*log(resim(:,:)+1);

end
