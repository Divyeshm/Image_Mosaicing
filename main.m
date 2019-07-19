% code for stitching images
close all;
clear all;
% stitching image 0 and 5
% loading of images
img1=imread('0.jpg');
img2=imread('5.jpg');
% corresponding points of images
a=[1003,916,963,1505,1722,1536,1735,1115];
b=[1130,236,948,712,1881,1045,2065,617];
% call mosaicing function
result=mosaicing(img1,img2,a,b);
imwrite(result,'mosaicing05img.jpg');
% output image
figure,imshow(result);
% stitching image 0,5 and 4
img2 = imread('4.jpg');
img1 = imread('mosaicing05img.jpg');
b=[95,576,22,1105,804,1022,1196,1082];
a=[1628,955,1575,1753,2333,1535,2627,1579];
result=mosaicing(img1,img2,a,b);
imwrite(result,'mosaicing054img.jpg');
figure,imshow(result);
% stitching image 0,5,4 and 2
img1 = imread('mosaicing054img.jpg');
img2 = imread('2.jpg');
a= [2579,928,2629,1580,2957,956,2976,1178];
b= [349,583,157,1339,1105,701,1035,1025];
result=mosaicing(img1,img2,a,b);
imwrite(result,'mosaicing0542img.jpg');
figure,imshow(result);
% stitching image 0,5,4,2 and 3
img1 = imread('mosaicing0542img.jpg');
img2 = imread('3.jpg');
a= [2572,905,2879,950,2591,1496,2935,1616];
b= [127,129,719,73,85,827,733,1011];
result=mosaicing(img1,img2,a,b);
imwrite(result,'mosaicing05423img.jpg');
figure,imshow(result);
% stitching image 0,5,4,2,3 and 1
img1 = imread('mosaicing05423img.jpg');
img2 = imread('1.jpg');
a= [2255,1347,2591,1495,2879,949,2976,1178];
b= [899,1449,1539,1259,1667,325,1993,473];
result=mosaicing(img1,img2,a,b);
imwrite(result,'mosaicing054231img.jpg');
figure,imshow(result);