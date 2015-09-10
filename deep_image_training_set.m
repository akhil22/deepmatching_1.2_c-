clear all;close all;
list = dir('/home/akhil/image_bkp/');
for i = 3:length(list)
    I = rgb2gray(imread(strcat('/home/akhil/image_bkp/',list(i).name)));
    xi = [499.5446;649.1831;761.4120;257.1301;474.1060;499.5446];
    yi = [235.1361;233.6398;371.3072;372.8036;233.6398;235.1361];
    bw = roipoly(I,xi,yi);
    I(~bw) = 0;
    imwrite(I,strcat('/home/akhil/Desktop/rotation_deep_match/',int2str(i)),'png');
end