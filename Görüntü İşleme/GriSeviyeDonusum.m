function [ griResim ] = GriSeviyeDonusum(resim)
[~,~,katman]=size(resim);

if(katman==1)
    griResim=resim;
else 
    griResim=0.2989*resim(:,:,1)+0.5870*resim(:,:,2)+0.1140*resim(:,:,3);
end

