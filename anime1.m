xx= linspace(-5,5,200);
Nrep=100;


v = VideoWriter('MAT350_sample.m4a');
open(v);

figure;
  
for ind=1:Nrep
    tt=(ind-1)*0.05;
     plot(xx,cos(2*pi*(xx-tt)));
    axis([-2,2,-1.5,1.5]);
    frame = getframe(gcf);
    writeVideo(v,frame);
    pause(0.1);


end
close(v);