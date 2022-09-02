# length of voice is 8 sec.

 [x,f]=audioread('voice.wav');
 l=length(x);
 plot(x);
 sec=l/8; % length of 1 sec.

 ## making echo with 1 sec delay on orginal voice.
 for i=1:sec-1
     y1(i)=x(i);
 end
 for i=sec:l-1
     y1(i)=x(i)+0.81*x(i-sec+1);
 end
 for i=l:sec+l
     y1(i)=x(i-sec);
 end

 figure
 plot(y1)

## if you want to hear the voice uncomment below.
##sound(y2,f);

 audiowrite('echo.wav',y1,f);

