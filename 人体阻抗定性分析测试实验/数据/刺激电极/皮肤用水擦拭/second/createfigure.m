function createfigure(X1, YMatrix1, YMatrix2, YMatrix3, YMatrix4)
%CREATEFIGURE(X1, YMATRIX1, YMATRIX2, YMATRIX3, YMATRIX4)
%  X1:  x 数据的矢量
%  YMATRIX1:  y 数据的矩阵
%  YMATRIX2:  y 数据的矩阵
%  YMATRIX3:  y 数据的矩阵
%  YMATRIX4:  y 数据的矩阵

%  由 MATLAB 于 01-Jun-2017 11:17:28 自动生成

% 创建 figure
figure1 = figure;

% 创建 axes
axes1 = axes('Parent',figure1,'Position',[0.08 0.6 0.35 0.3]);
grid(axes1,'on');
hold(axes1,'all');

% 使用 plot 的矩阵输入创建多行
plot1 = plot(X1,YMatrix1,'Parent',axes1,'LineWidth',2);
set(plot1(1),'Color',[0 0 1],'DisplayName','未润湿');
set(plot1(2),'Color',[1 0 0],'DisplayName','轻微擦拭皮肤');
set(plot1(3),'Color',[0 1 0],'DisplayName','润湿皮肤');
set(plot1(4),'Color',[1 1 0],'DisplayName','润湿皮肤及电极');

% 创建 title
title('阻抗Z值变化曲线图');

% 创建 ylabel
ylabel('Z / Kohm');

% 创建 axes
axes2 = axes('Parent',figure1,'Position',[0.6 0.6 0.35 0.3]);
grid(axes2,'on');
hold(axes2,'all');

% 使用 plot 的矩阵输入创建多行
plot2 = plot(X1,YMatrix2,'Parent',axes2,'LineWidth',2);
set(plot2(1),'Color',[0 0 1],'DisplayName','未润湿');
set(plot2(2),'Color',[1 0 0],'DisplayName','轻微擦拭皮肤');
set(plot2(3),'Color',[0 1 0],'DisplayName','润湿皮肤');
set(plot2(4),'Color',[1 1 0],'DisplayName','润湿皮肤及电极');

% 创建 title
title('串联电阻Rs值变化曲线图');

% 创建 ylabel
ylabel('Rs / Kohm');

% 创建 axes
axes3 = axes('Parent',figure1,'Position',[0.08 0.1 0.35 0.3]);
grid(axes3,'on');
hold(axes3,'all');

% 使用 plot 的矩阵输入创建多行
plot3 = plot(X1,YMatrix3,'Parent',axes3,'LineWidth',2);
set(plot3(1),'Color',[0 0 1],'DisplayName','未润湿');
set(plot3(2),'Color',[1 0 0],'DisplayName','轻微擦拭皮肤');
set(plot3(3),'Color',[0 1 0],'DisplayName','润湿皮肤');
set(plot3(4),'Color',[1 1 0],'DisplayName','润湿皮肤及电极');

% 创建 title
title('串联电容Cs值变化曲线图');

% 创建 ylabel
ylabel('Cs / nF');

% 创建 axes
axes4 = axes('Parent',figure1,'Position',[0.6 0.1 0.35 0.3]);
grid(axes4,'on');
hold(axes4,'all');

% 使用 plot 的矩阵输入创建多行
plot4 = plot(X1,YMatrix4,'Parent',axes4,'LineWidth',2);
set(plot4(1),'Color',[0 0 1],'DisplayName','未润湿');
set(plot4(2),'Color',[1 0 0],'DisplayName','轻微擦拭皮肤');
set(plot4(3),'Color',[0 1 0],'DisplayName','润湿皮肤');
set(plot4(4),'Color',[1 1 0],'DisplayName','润湿皮肤及电极');

% 创建 title
title('各测试电平下串联电感Ls值变化曲线图');

% 创建 ylabel
ylabel('LS / H');

% 创建 legend
legend1 = legend(axes4,'show');
set(legend1,'Orientation','horizontal',...
    'Position',[0.249852851323828 0.47743682310469 0.545824847250509 0.0433212996389891]);

