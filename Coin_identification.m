clc; close all;clear;
[filename, pathname] = uigetfile('*.*','C:\Users\charl\Desktop\NAIR');
l1=imread([pathname, filename]);
I=rgb2gray(l1);
figure();imshow(l1);
I=imgaussfilt(I,6);
I=imcrop(I);
[q,w]=size(I)
I=edge(I,'canny',0.3);
one=imresize(imread('one.jpg'),[q w]);
two=imresize(imread('two.jpg'),[q w]);
three=imresize(imread('three.jpg'),[q w]);
four=imresize(imread('four.jpg'),[q w]);
five=imresize(imread('five.jpg'),[q w]);
six=imresize(imread('six.jpg'),[q w]);
seven=imresize(imread('seven.jpg'),[q w]);
eight=imresize(imread('eight.jpg'),[q w]);
nine=imresize(imread('nine.jpg'),[q w]);
sim1=corr2( I,one );
sim2=corr2( I,two );
sim3=corr2( I,three );
sim4=corr2( I,four);
sim5=corr2( I,five );
sim6=corr2( I,six);
sim7=corr2( I,seven );
sim8=corr2( I,eight);
sim9=corr2( I,nine );
sim=-1;
value=0;
if ( sim1 >=sim)
    sim=sim1;
    value=1;
end
    if  (sim2>=sim)
     sim=sim2;
    value= 1;
    end
    if  (sim3>=sim)
     sim=sim3;
    value=1;
    end
    if  (sim4>=sim)
     sim=sim4;
    value=2; 
    end
    if  (sim5>=sim)
     sim=sim5;
    value=2;
    end
    if  (sim6>=sim)
      sim=sim6;
    value=2;
    end
    if  (sim7>=sim)
       sim=sim7;
    value=5;
    end
   if  (sim8>=sim)
       sim=sim8;
    value=5;
   end
   if  (sim9>=sim)
       sim=sim9;
    value=5;
   end
     if(value==1)
     msgbox('hello')
     end
     if(value==2)
         msgbox('2.RUPEES')
     end
         if(value==5)
             msgbox('5.RUPEES')
         end
