clc
clear

limit_x_time = 480;
limit_y_distance = 200;

[X,Y]= meshgrid(0:5:limit_x_time, 0:5:limit_y_distance);


Z = arrayfun(@(x,y) CommunAutoCost(x,y), X, Y);
Z1 = arrayfun(@(x,y) AutoMobileCost(x,y), X, Y);
Zmin = min(Z, Z1);
hold on



zlabel('ValuePlus Plan Cost($)');
xlabel('Time(min)');
ylabel('Distance(km)');

S = surf(X,Y,Zmin);
S1 = surf(X,Y,X*0+Y*0+12);
S2 = surf(X,Y,X*0+Y*0+24);
S3 = surf(X,Y,X*0+Y*0+36);
%S.EdgeColor = [0 0 0];
%S.LineStyle = '-';
%S.FaceColor = 'flat';
S1.FaceAlpha = 0.25000;
S2.FaceAlpha = 0.25000;
S3.FaceAlpha = 0.25000;
S1.EdgeColor = [0 0 0];
S2.EdgeColor = [0 0 0];
S3.EdgeColor = [0 0 0];
axis tight
% S = surf(X,Y,Z1)
% S.EdgeColor ='none';

%set(gca, 'Projection','perspective');
xlim([0 limit_x_time])
ylim([0 limit_y_distance])
%legend("Automobile","Communauto");
% shading interp;
%camlight;

camproj 'perspective'
hold off
OptionZ.FrameRate=60;OptionZ.Duration=10;OptionZ.Periodic=true;
CaptureFigVid([-20,10;-110,10;-190,80;-290,10;-380,10], 'WellMadeVid',OptionZ)