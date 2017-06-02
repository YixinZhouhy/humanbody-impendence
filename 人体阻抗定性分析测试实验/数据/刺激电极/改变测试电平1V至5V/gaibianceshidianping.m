clc;
clear;
close;

x = [1:1:200];

% ��ȡ�ļ�����
data_1V = importdata('1V.txt');
data_2V = importdata('2V.txt');
data_3V = importdata('3V.txt');
data_4V = importdata('4V.txt');
data_5V = importdata('5V.txt');

% a = a' Ϊת��
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_1V_Z = (data_1V(:, 1))' ./ (10^3);  % ��һ�����ݵ��迹ֵ
data_1V_Rs = (data_1V(:, 2))' ./ (10^3); % ��һ�����ݵĴ�������ֵ
data_1V_Cs = (data_1V(:, 3))' .* (10^9); % ��һ�����ݵĴ�������ֵ
data_1V_Ls = (data_1V(:, 4))'; % ��һ�����ݵĴ������ֵ

data_2V_Z = (data_2V(:, 1))' ./ (10^3);  % �ڶ������ݵ��迹ֵ
data_2V_Rs = (data_2V(:, 2))' ./ (10^3); % �ڶ������ݵĴ�������ֵ
data_2V_Cs = (data_2V(:, 3))' .* (10^9); % �ڶ������ݵĴ�������ֵ
data_2V_Ls = (data_2V(:, 4))'; % �ڶ������ݵĴ������ֵ

data_3V_Z = (data_3V(:, 1))' ./ (10^3);  % ���������ݵ��迹ֵ
data_3V_Rs = (data_3V(:, 2))' ./ (10^3); % ���������ݵĴ�������ֵ
data_3V_Cs = (data_3V(:, 3))' .* (10^9); % ���������ݵĴ�������ֵ
data_3V_Ls = (data_3V(:, 4))'; % ���������ݵĴ������ֵ

data_4V_Z = (data_4V(:, 1))' ./ (10^3);  % ���������ݵ��迹ֵ
data_4V_Rs = (data_4V(:, 2))' ./ (10^3); % ���������ݵĴ�������ֵ
data_4V_Cs = (data_4V(:, 3))' .* (10^9); % ���������ݵĴ�������ֵ
data_4V_Ls = (data_4V(:, 4))'; % ���������ݵĴ������ֵ

data_5V_Z = (data_5V(:, 1) )' ./ (10^3);  % ���������ݵ��迹ֵ
data_5V_Rs = (data_5V(:, 2))' ./ (10^3); % ���������ݵĴ�������ֵ
data_5V_Cs = (data_5V(:, 3))' .* (10^9); % ���������ݵĴ�������ֵ
data_5V_Ls = (data_5V(:, 4))'; % ���������ݵĴ������ֵ

figure(1);
%set(gcf, 'position', [100 100 750 450]);

%subplot(2, 2, 1,'position', [0.08, 0.6, 0.35, 0.3]);
hold on;
grid on
PZ1 = plot(x, data_1V_Z, '.b', 'LineWidth', 2);
PZ2 = plot(x, data_2V_Z, '.r', 'LineWidth', 2);
PZ3 = plot(x, data_3V_Z, '.g', 'LineWidth', 2);
PZ4 = plot(x, data_4V_Z, '.y', 'LineWidth', 2);
PZ5 = plot(x, data_5V_Z, '.k', 'LineWidth', 2);
ylim([71 81]);
%title('�����Ե�ƽ���迹Zֵ�仯����ͼ');
ylabel('Z / Kohm');
legend([PZ1, PZ2, PZ3, PZ4, PZ5], { '1V';...
                                    '2V';...
                                    '3V';...
                                    '4V';...
                                    '5V'},...
                                    'location','bestoutside');  %ͼ����ע

figure(2);
%subplot(2, 2, 2,'position', [0.6, 0.6, 0.35, 0.3]);
hold on ;
grid on;

PRs1 = plot(x, data_1V_Rs, '.b', 'LineWidth', 2);
PRs2 = plot(x, data_2V_Rs, '.r', 'LineWidth', 2);
PRs3 = plot(x, data_3V_Rs, '.g', 'LineWidth', 2);
PRs4 = plot(x, data_4V_Rs, '.y', 'LineWidth', 2);
PRs5 = plot(x, data_5V_Rs, '.k', 'LineWidth', 2);
%ylim([68 81]);
%title('�����Ե�ƽ�´�������Rsֵ�仯����ͼ');
ylabel('Rs / Kohm');
legend([PRs1, PRs2, PRs3, PRs4, PRs5], { '1V';...
                                         '2V';...
                                         '3V';...
                                         '4V';...
                                         '5V'},...
                                         'location','bestoutside');  %ͼ����ע
 figure(3);                                    
%subplot(2, 2, 3,'position', [0.08, 0.1, 0.35, 0.3]);
hold on;
grid on;

PCs1 = plot(x, data_1V_Cs, '.b', 'LineWidth', 2);
PCs2 = plot(x, data_2V_Cs, '.r', 'LineWidth', 2);
PCs3 = plot(x, data_3V_Cs, '.g', 'LineWidth', 2);
PCs4 = plot(x, data_4V_Cs, '.y', 'LineWidth', 2);
PCs5 = plot(x, data_5V_Cs, '.k', 'LineWidth', 2);
ylim([120 160]);
%title('        �����Ե�ƽ�´�������Csֵ�仯����ͼ');
ylabel('Cs / nF');
legend([PCs1, PCs2, PCs3, PCs4, PCs5], { '1V';...
                                         '2V';...
                                         '3V';...
                                         '4V';...
                                         '5V'},...
                                         'location','bestoutside');  %ͼ����ע
 figure(4);
%subplot(2, 2, 4,'position', [0.6, 0.1, 0.35, 0.3]);
hold on;
grid on;

PLs1 = plot(x, data_1V_Ls, '.b', 'LineWidth', 2);
PLs2 = plot(x, data_2V_Ls, '.r', 'LineWidth', 2);
PLs3 =plot(x, data_3V_Ls, '.g', 'LineWidth', 2);
PLs4 = plot(x, data_4V_Ls, '.y', 'LineWidth', 2);
PLs5 = plot(x, data_5V_Ls, '.k', 'LineWidth', 2);
ylim([-510 -400]);
%title('�����Ե�ƽ�´������Lsֵ�仯����ͼ');
ylabel('LS / H');
legend([PLs1, PLs2, PLs3, PLs4, PLs5], { '1V';...
                                         '2V';...
                                         '3V';...
                                         '4V';...
                                         '5V'},...
                                         'location','bestoutside');  %ͼ����ע
 



