clc;
clear;
close;

x = [1:1:200];

% 读取文件数据
data_withoutwater = importdata('withoutwater.txt');
data_water_1 = importdata('轻微擦拭.txt');
data_water_2 = importdata('润湿皮肤.txt');
data_water_3 = importdata('润湿皮肤及电极.txt');
data_water_5min = importdata('5min_later.txt');
data_water_10min = importdata('10min_later.txt');
data_water_15min = importdata('15min_later.txt');
data_water_20min = importdata('20min_later.txt');
data_water_25min = importdata('25min_later.txt');

% a = a' 为转置
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_ww_Z = (data_withoutwater(:, 1))' ./ (10^3);  % 不加水的阻抗值
data_ww_Rs = (data_withoutwater(:, 2))' ./ (10^3); % 不加水的串联电阻值
data_ww_Cs = (data_withoutwater(:, 3))' .* (10^9); % 不加水的串联电容值
data_ww_Ls = (data_withoutwater(:, 4))'; % 不加水的串联电感值

data_w1_Z = (data_water_1(:, 1))' ./ (10^3);  % 轻微擦拭的阻抗值
data_w1_Rs = (data_water_1(:, 2))' ./ (10^3); % 轻微擦拭的串联电阻值
data_w1_Cs = (data_water_1(:, 3))' .* (10^9); % 轻微擦拭的串联电容值
data_w1_Ls = (data_water_1(:, 4))'; % 轻微擦拭的串联电感值

data_w2_Z = (data_water_2(:, 1))' ./ (10^3);  % 润湿皮肤的阻抗值
data_w2_Rs = (data_water_2(:, 2))' ./ (10^3); % 润湿皮肤的串联电阻值
data_w2_Cs = (data_water_2(:, 3))' .* (10^9); % 润湿皮肤的串联电容值
data_w2_Ls = (data_water_2(:, 4))'; % 润湿皮肤的串联电感值

data_w3_Z = (data_water_3(:, 1))' ./ (10^3);  % 润湿皮肤的阻抗值
data_w3_Rs = (data_water_3(:, 2))' ./ (10^3); % 润湿皮肤的串联电阻值
data_w3_Cs = (data_water_3(:, 3))' .* (10^9); % 润湿皮肤的串联电容值
data_w3_Ls = (data_water_3(:, 4))'; % 润湿皮肤的串联电感值

data_5min_Z = (data_water_5min(:, 1))' ./ (10^3);  % 5min后的阻抗值
data_5min_Rs = (data_water_5min(:, 2))' ./ (10^3); % 5min后的串联电阻值
data_5min_Cs = (data_water_5min(:, 3))' .* (10^9); % 5min后的串联电容值
data_5min_Ls = (data_water_5min(:, 4))'; % 5min后的串联电感值

data_10min_Z = (data_water_10min(:, 1))' ./ (10^3);  % 10min后的阻抗值
data_10min_Rs = (data_water_10min(:, 2))' ./ (10^3); % 10min后的串联电阻值
data_10min_Cs = (data_water_10min(:, 3))' .* (10^9); % 10min后的串联电容值
data_10min_Ls = (data_water_10min(:, 4))'; % 10min后的串联电感值

data_15min_Z = (data_water_15min(:, 1))' ./ (10^3);  % 15min后的阻抗值
data_15min_Rs = (data_water_15min(:, 2))' ./ (10^3); % 15min后的串联电阻值
data_15min_Cs = (data_water_15min(:, 3))' .* (10^9); % 15min后的串联电容值
data_15min_Ls = (data_water_15min(:, 4))'; % 15min后的串联电感值

data_20min_Z = (data_water_20min(:, 1))' ./ (10^3);  % 20min后的阻抗值
data_20min_Rs = (data_water_20min(:, 2))' ./ (10^3); % 20min后的串联电阻值
data_20min_Cs = (data_water_20min(:, 3))' .* (10^9); % 20min后的串联电容值
data_20min_Ls = (data_water_20min(:, 4))'; % 20min后的串联电感值

data_25min_Z = (data_water_25min(:, 1))' ./ (10^3);  % 25min后的阻抗值
data_25min_Rs = (data_water_25min(:, 2))' ./ (10^3); % 25min后的串联电阻值
data_25min_Cs = (data_water_25min(:, 3))' .* (10^9); % 25min后的串联电容值
data_25min_Ls = (data_water_25min(:, 4))'; % 25min后的串联电感值

figure(1);
%set(gcf, 'position', [100 100 750 450]);

%subplot(2, 2, 1,'position', [0.08, 0.6, 0.35, 0.3]);
hold on;
grid on
PZ1 = plot(x, data_ww_Z, '.b', 'LineWidth', 2);
PZ2 = plot(x, data_w1_Z, '.r', 'LineWidth', 2);
PZ3 = plot(x, data_w2_Z, '.g', 'LineWidth', 2);
PZ4 = plot(x, data_w3_Z, '.y', 'LineWidth', 2);
%ylim([71 81]);

ylabel('Z / Kohm');
legend([PZ1, PZ2, PZ3, PZ4], { '未润湿';...
                               '轻微擦拭皮肤';...
                               '润湿皮肤';...
                               '润湿皮肤及电极';...
                               },...
                               'location','bestoutside');  %图例标注

figure(2);
%subplot(2, 2, 2,'position', [0.6, 0.6, 0.35, 0.3]);
hold on ;
grid on;

PRs1 = plot(x, data_ww_Rs, '.b', 'LineWidth', 2);
PRs2 = plot(x, data_w1_Rs, '.r', 'LineWidth', 2);
PRs3 = plot(x, data_w2_Rs, '.g', 'LineWidth', 2);
PRs4 = plot(x, data_w3_Rs, '.y', 'LineWidth', 2);
%ylim([68 81]);

ylabel('Rs / Kohm');
legend([PRs1, PRs2, PRs3, PRs4], { '未润湿';...
                                   '轻微擦拭皮肤';...
                                   '润湿皮肤';...
                                   '润湿皮肤及电极';...
                                  },...
                                   'location','bestoutside');  %图例标注
figure(3);   
%subplot(2, 2, 3,'position', [0.08, 0.1, 0.35, 0.3]);
hold on;
grid on;

PCs1 = plot(x, data_ww_Cs, '.b', 'LineWidth', 2);
PCs2 = plot(x, data_w1_Cs, '.r', 'LineWidth', 2);
PCs3 = plot(x, data_w2_Cs, '.g', 'LineWidth', 2);
PCs4 = plot(x, data_w3_Cs, '.y', 'LineWidth', 2);
%ylim([120 160]);

ylabel('Cs / nF');
legend([PCs1, PCs2, PCs3, PCs4], { '未润湿';...
                                   '轻微擦拭皮肤';...
                                   '润湿皮肤';...
                                   '润湿皮肤及电极';...
                                  },...
                                   'location','bestoutside');  %图例标注
 
 
figure(4);                               
%subplot(2, 2, 4,'position', [0.6, 0.1, 0.35, 0.3]);
hold on;
grid on;

PLs1 = plot(x, data_ww_Ls, '.b', 'LineWidth', 2);
PLs2 = plot(x, data_w1_Ls, '.r', 'LineWidth', 2);
PLs3 =plot(x, data_w2_Ls, '.g', 'LineWidth', 2);
PLs4 = plot(x, data_w3_Ls, '.y', 'LineWidth', 2);
%ylim([-510 -400]);
ylabel('LS / H');
legend([PLs1, PLs2, PLs3, PLs4], { '未润湿';...
                                   '轻微擦拭皮肤';...
                                   '润湿皮肤';...
                                   '润湿皮肤及电极';...
                                  },...
                                   'location','bestoutside');  %图例标注
                               
figure(5);
hold on;
grid on;
 
%subplot(2, 2, 1,'position', [0.08, 0.6, 0.35, 0.3]);
hold on;
grid on
PZ1 = plot(x, data_ww_Z, '.b', 'LineWidth', 2);
PZ2 = plot(x, data_w3_Z, '.r', 'LineWidth', 2);
PZ3 = plot(x, data_10min_Z, '.g', 'LineWidth', 2);
PZ4 = plot(x, data_15min_Z, '.y', 'LineWidth', 2);
PZ5 = plot(x, data_20min_Z, '.k', 'LineWidth', 2);
PZ6 = plot(x, data_25min_Z, '.m', 'LineWidth', 2);
%ylim([71 81]);
ylabel('Z / Kohm');
legend([PZ1, PZ2, PZ3, PZ4, PZ5, PZ6], {     '未润湿';...
                                         '润湿电极与皮肤';...
                                         '10分钟后';...
                                         '15分钟后';...
                                         '20分钟后';...
                                         '25分钟后';},...
                                         'location','bestoutside');  %图例标注
figure(6);
%subplot(2, 2, 2,'position', [0.6, 0.6, 0.35, 0.3]);
hold on ;
grid on;

PRs1 = plot(x, data_ww_Rs, '.b', 'LineWidth', 2);
PRs2 = plot(x, data_w3_Rs, '.r', 'LineWidth', 2);
PRs3 = plot(x, data_10min_Rs, '.g', 'LineWidth', 2);
PRs4 = plot(x, data_15min_Rs, '.y', 'LineWidth', 2);
PRs5 = plot(x, data_20min_Rs, '.k', 'LineWidth', 2);
PRs6 = plot(x, data_25min_Rs, '.m', 'LineWidth', 2);
%ylim([68 81]);
ylabel('Rs / Kohm');
legend([PRs1, PRs2, PRs3, PRs4, PRs5, PRs6], {       '未润湿';...
                                               '润湿电极与皮肤';...
                                               '10分钟后';...
                                               '15分钟后';...
                                               '20分钟后';...
                                               '25分钟后';},...
                                               'location','bestoutside');  %图例标注
figure(7);
%subplot(2, 2, 3,'position', [0.08, 0.1, 0.35, 0.3]);
hold on;
grid on;

PCs1 = plot(x, data_ww_Cs, '.b', 'LineWidth', 2);
PCs2 = plot(x, data_w3_Cs, '.r', 'LineWidth', 2);
PCs3 = plot(x, data_10min_Cs, '.g', 'LineWidth', 2);
PCs4 = plot(x, data_15min_Cs, '.y', 'LineWidth', 2);
PCs5 = plot(x, data_20min_Cs, '.k', 'LineWidth', 2);
PCs6 = plot(x, data_25min_Cs, '.m', 'LineWidth', 2);
%ylim([120 160]);
ylabel('Cs / nF');
legend([PCs1, PCs2, PCs3, PCs4, PCs5, PCs6], {        '未润湿';...
                                               '润湿电极与皮肤';...
                                               '10分钟后';...
                                               '15分钟后';...
                                               '20分钟后';...
                                               '25分钟后';},...
                                               'location','bestoutside');  %图例标注
figure(8);
%subplot(2, 2, 4,'position', [0.6, 0.1, 0.35, 0.3]);
hold on;
grid on;

PLs1 = plot(x, data_ww_Ls, '.b', 'LineWidth', 2);
PLs2 = plot(x, data_w3_Ls, '.r', 'LineWidth', 2);
PLs3 =plot(x, data_10min_Ls, '.g', 'LineWidth', 2);
PLs4 = plot(x, data_15min_Ls, '.y', 'LineWidth', 2);
PLs5 = plot(x, data_20min_Ls, '.k', 'LineWidth', 2);
PLs6 = plot(x, data_25min_Ls, '.m', 'LineWidth', 2);
%ylim([-510 -400]);
ylabel('Ls / H');
legend([PLs1, PLs2, PLs3, PLs4, PLs5, PLs6], {       '未润湿';...
                                               '润湿电极与皮肤';...
                                               '10分钟后';...
                                               '15分钟后';...
                                               '20分钟后';...
                                               '25分钟后';},...
                                               'location','bestoutside');  %图例标注
