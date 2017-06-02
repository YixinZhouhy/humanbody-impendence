clc;
clear;
close;

x = [1:1:200];

% ��ȡ�ļ�����
data_withoutwater = importdata('withoutwater.txt');
data_water_1 = importdata('water_1.txt');
data_water_2 = importdata('water_2.txt');

% a = a' Ϊת��
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_ww_Z = (data_withoutwater(:, 1))' ./ (10^3);  % ��һ�����ݵ��迹ֵ
data_ww_Rs = (data_withoutwater(:, 2))' ./ (10^3); % ��һ�����ݵĴ�������ֵ
data_ww_Cs = (data_withoutwater(:, 3))' .* (10^9); % ��һ�����ݵĴ�������ֵ
data_ww_Ls = (data_withoutwater(:, 4))'; % ��һ�����ݵĴ������ֵ

data_w1_Z = (data_water_1(:, 1))' ./ (10^3);  % �ڶ������ݵ��迹ֵ
data_w1_Rs = (data_water_1(:, 2))' ./ (10^3); % �ڶ������ݵĴ�������ֵ
data_w1_Cs = (data_water_1(:, 3))' .* (10^9); % �ڶ������ݵĴ�������ֵ
data_w1_Ls = (data_water_1(:, 4))'; % �ڶ������ݵĴ������ֵ

data_w2_Z = (data_water_2(:, 1))' ./ (10^3);  % ���������ݵ��迹ֵ
data_w2_Rs = (data_water_2(:, 2))' ./ (10^3); % ���������ݵĴ�������ֵ
data_w2_Cs = (data_water_2(:, 3))' .* (10^9); % ���������ݵĴ�������ֵ
data_w2_Ls = (data_water_2(:, 4))'; % ���������ݵĴ������ֵ

figure;
set(gcf, 'position', [100 100 750 450]);

subplot(2, 2, 1,'position', [0.08, 0.6, 0.4, 0.3]);
hold on;
grid on
PZ1 = plot(x, data_ww_Z, 'b', 'LineWidth', 2);
PZ2 = plot(x, data_w1_Z, 'r', 'LineWidth', 2);
PZ3 = plot(x, data_w2_Z, 'g', 'LineWidth', 2);
%ylim([71 81]);
title('�迹Zֵ�仯����ͼ');
%ylabel('Z / Kohm');
legend([PZ1, PZ2, PZ3], { 'δ��ʪ';...
                          '��һ����ʪ';...
                          '�ڶ�����ʪ';},...
                          'location','bestoutside');  %ͼ����ע
                      
subplot(2, 2, 2,'position', [0.6, 0.6, 0.4, 0.3]);
hold on ;
grid on;

PRs1 = plot(x, data_ww_Rs, 'b', 'LineWidth', 2);
PRs2 = plot(x, data_w1_Rs, 'r', 'LineWidth', 2);
PRs3 = plot(x, data_w2_Rs, 'g', 'LineWidth', 2);
ylim([30 45]);
title('��������Rsֵ�仯����ͼ');
ylabel('Rs / Kohm');
legend([PRs1, PRs2, PRs3], { 'δ��ʪ';...
                             '��һ����ʪ';...
                             '�ڶ�����ʪ';},...
                             'location','bestoutside');  %ͼ����ע
                                     
subplot(2, 2, 3,'position', [0.08, 0.1, 0.4, 0.3]);
hold on;
grid on;

PCs1 = plot(x, data_ww_Cs, 'b', 'LineWidth', 2);
PCs2 = plot(x, data_w1_Cs, 'r', 'LineWidth', 2);
PCs3 = plot(x, data_w2_Cs, 'g', 'LineWidth', 2);
ylim([120 250]);
title('        ��������Csֵ�仯����ͼ');
ylabel('Cs / nF');
legend([PCs1, PCs2, PCs3], { 'δ��ʪ';...
                             '��һ����ʪ';...
                             '�ڶ�����ʪ';...
                             },...
                             'location','bestoutside');  %ͼ����ע
 
subplot(2, 2, 4,'position', [0.6, 0.1, 0.4, 0.3]);
hold on;
grid on;

PLs1 = plot(x, data_ww_Ls, 'b', 'LineWidth', 2);
PLs2 = plot(x, data_w1_Ls, 'r', 'LineWidth', 2);
PLs3 =plot(x, data_w2_Ls, 'g', 'LineWidth', 2);
ylim([-510 -250]);
title('�������Lsֵ�仯����ͼ');
ylabel('LS / H');
legend([PLs1, PLs2, PLs3], { 'δ��ʪ';...
                             '��һ����ʪ';...
                             '�ڶ�����ʪ';...
                             },...
                             'location','bestoutside');  %ͼ����ע
 