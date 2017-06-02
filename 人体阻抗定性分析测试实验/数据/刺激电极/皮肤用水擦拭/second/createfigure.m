function createfigure(X1, YMatrix1, YMatrix2, YMatrix3, YMatrix4)
%CREATEFIGURE(X1, YMATRIX1, YMATRIX2, YMATRIX3, YMATRIX4)
%  X1:  x ���ݵ�ʸ��
%  YMATRIX1:  y ���ݵľ���
%  YMATRIX2:  y ���ݵľ���
%  YMATRIX3:  y ���ݵľ���
%  YMATRIX4:  y ���ݵľ���

%  �� MATLAB �� 01-Jun-2017 11:17:28 �Զ�����

% ���� figure
figure1 = figure;

% ���� axes
axes1 = axes('Parent',figure1,'Position',[0.08 0.6 0.35 0.3]);
grid(axes1,'on');
hold(axes1,'all');

% ʹ�� plot �ľ������봴������
plot1 = plot(X1,YMatrix1,'Parent',axes1,'LineWidth',2);
set(plot1(1),'Color',[0 0 1],'DisplayName','δ��ʪ');
set(plot1(2),'Color',[1 0 0],'DisplayName','��΢����Ƥ��');
set(plot1(3),'Color',[0 1 0],'DisplayName','��ʪƤ��');
set(plot1(4),'Color',[1 1 0],'DisplayName','��ʪƤ�����缫');

% ���� title
title('�迹Zֵ�仯����ͼ');

% ���� ylabel
ylabel('Z / Kohm');

% ���� axes
axes2 = axes('Parent',figure1,'Position',[0.6 0.6 0.35 0.3]);
grid(axes2,'on');
hold(axes2,'all');

% ʹ�� plot �ľ������봴������
plot2 = plot(X1,YMatrix2,'Parent',axes2,'LineWidth',2);
set(plot2(1),'Color',[0 0 1],'DisplayName','δ��ʪ');
set(plot2(2),'Color',[1 0 0],'DisplayName','��΢����Ƥ��');
set(plot2(3),'Color',[0 1 0],'DisplayName','��ʪƤ��');
set(plot2(4),'Color',[1 1 0],'DisplayName','��ʪƤ�����缫');

% ���� title
title('��������Rsֵ�仯����ͼ');

% ���� ylabel
ylabel('Rs / Kohm');

% ���� axes
axes3 = axes('Parent',figure1,'Position',[0.08 0.1 0.35 0.3]);
grid(axes3,'on');
hold(axes3,'all');

% ʹ�� plot �ľ������봴������
plot3 = plot(X1,YMatrix3,'Parent',axes3,'LineWidth',2);
set(plot3(1),'Color',[0 0 1],'DisplayName','δ��ʪ');
set(plot3(2),'Color',[1 0 0],'DisplayName','��΢����Ƥ��');
set(plot3(3),'Color',[0 1 0],'DisplayName','��ʪƤ��');
set(plot3(4),'Color',[1 1 0],'DisplayName','��ʪƤ�����缫');

% ���� title
title('��������Csֵ�仯����ͼ');

% ���� ylabel
ylabel('Cs / nF');

% ���� axes
axes4 = axes('Parent',figure1,'Position',[0.6 0.1 0.35 0.3]);
grid(axes4,'on');
hold(axes4,'all');

% ʹ�� plot �ľ������봴������
plot4 = plot(X1,YMatrix4,'Parent',axes4,'LineWidth',2);
set(plot4(1),'Color',[0 0 1],'DisplayName','δ��ʪ');
set(plot4(2),'Color',[1 0 0],'DisplayName','��΢����Ƥ��');
set(plot4(3),'Color',[0 1 0],'DisplayName','��ʪƤ��');
set(plot4(4),'Color',[1 1 0],'DisplayName','��ʪƤ�����缫');

% ���� title
title('�����Ե�ƽ�´������Lsֵ�仯����ͼ');

% ���� ylabel
ylabel('LS / H');

% ���� legend
legend1 = legend(axes4,'show');
set(legend1,'Orientation','horizontal',...
    'Position',[0.249852851323828 0.47743682310469 0.545824847250509 0.0433212996389891]);

