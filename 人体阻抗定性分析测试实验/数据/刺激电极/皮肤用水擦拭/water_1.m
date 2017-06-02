clc;
clear;
close;

x = [1:1:200];

% 读取文件数据
data_withoutwater = importdata('withoutwater.txt');
data_water_1 = importdata('water_1.txt');
data_water_2 = importdata('water_2.txt');

% a = a' 为转置
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_ww_Z = (data_withoutwater(:, 1))' ./ (10^3);  % 第一组数据的阻抗值
data_ww_Rs = (data_withoutwater(:, 2))' ./ (10^3); % 第一组数据的串联电阻值
data_ww_Cs = (data_withoutwater(:, 3))' .* (10^9); % 第一组数据的串联电容值
data_ww_Ls = (data_withoutwater(:, 4))'; % 第一组数据的串联电感值

data_w1_Z = (data_water_1(:, 1))' ./ (10^3);  % 第二组数据的阻抗值
data_w1_Rs = (data_water_1(:, 2))' ./ (10^3); % 第二组数据的串联电阻值
data_w1_Cs = (data_water_1(:, 3))' .* (10^9); % 第二组数据的串联电容值
data_w1_Ls = (data_water_1(:, 4))'; % 第二组数据的串联电感值

data_w2_Z = (data_water_2(:, 1))' ./ (10^3);  % 第三组数据的阻抗值
data_w2_Rs = (data_water_2(:, 2))' ./ (10^3); % 第三组数据的串联电阻值
data_w2_Cs = (data_water_2(:, 3))' .* (10^9); % 第三组数据的串联电容值
data_w2_Ls = (data_water_2(:, 4))'; % 第三组数据的串联电感值

figure;
set(gcf, 'position', [100 100 750 450]);

subplot(2, 2, 1,'position', [0.08, 0.6, 0.4, 0.3]);
hold on;
grid on
PZ1 = plot(x, data_ww_Z, 'b', 'LineWidth', 2);
PZ2 = plot(x, data_w1_Z, 'r', 'LineWidth', 2);
PZ3 = plot(x, data_w2_Z, 'g', 'LineWidth', 2);
%ylim([71 81]);
title('阻抗Z值变化曲线图');
%ylabel('Z / Kohm');
legend([PZ1, PZ2, PZ3], { '未润湿';...
                          '第一次润湿';...
                          '第二次润湿';},...
                          'location','bestoutside');  %图例标注
                      
subplot(2, 2, 2,'position', [0.6, 0.6, 0.4, 0.3]);
hold on ;
grid on;

PRs1 = plot(x, data_ww_Rs, 'b', 'LineWidth', 2);
PRs2 = plot(x, data_w1_Rs, 'r', 'LineWidth', 2);
PRs3 = plot(x, data_w2_Rs, 'g', 'LineWidth', 2);
ylim([30 45]);
title('串联电阻Rs值变化曲线图');
ylabel('Rs / Kohm');
legend([PRs1, PRs2, PRs3], { '未润湿';...
                             '第一次润湿';...
                             '第二次润湿';},...
                             'location','bestoutside');  %图例标注
                                     
subplot(2, 2, 3,'position', [0.08, 0.1, 0.4, 0.3]);
hold on;
grid on;

PCs1 = plot(x, data_ww_Cs, 'b', 'LineWidth', 2);
PCs2 = plot(x, data_w1_Cs, 'r', 'LineWidth', 2);
PCs3 = plot(x, data_w2_Cs, 'g', 'LineWidth', 2);
ylim([120 250]);
title('        串联电容Cs值变化曲线图');
ylabel('Cs / nF');
legend([PCs1, PCs2, PCs3], { '未润湿';...
                             '第一次润湿';...
                             '第二次润湿';...
                             },...
                             'location','bestoutside');  %图例标注
 
subplot(2, 2, 4,'position', [0.6, 0.1, 0.4, 0.3]);
hold on;
grid on;

PLs1 = plot(x, data_ww_Ls, 'b', 'LineWidth', 2);
PLs2 = plot(x, data_w1_Ls, 'r', 'LineWidth', 2);
PLs3 =plot(x, data_w2_Ls, 'g', 'LineWidth', 2);
ylim([-510 -250]);
title('串联电感Ls值变化曲线图');
ylabel('LS / H');
legend([PLs1, PLs2, PLs3], { '未润湿';...
                             '第一次润湿';...
                             '第二次润湿';...
                             },...
                             'location','bestoutside');  %图例标注
 