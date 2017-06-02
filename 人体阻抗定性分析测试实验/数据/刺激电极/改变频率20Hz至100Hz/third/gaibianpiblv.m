clc;
clear;

x= [1:1:200];
data_20 = importdata('20Hz.txt'); 
data_30 = importdata('30Hz.txt');
data_40 = importdata('40Hz.txt');
data_50 = importdata('50Hz.txt');
data_60 = importdata('60Hz.txt');
data_70 = importdata('70Hz.txt');
data_80 = importdata('80Hz.txt');
data_90 = importdata('90Hz.txt');
data_100 = importdata('100Hz.txt');

% a = a' 为转置
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_20_Z = (data_20(:, 1))' ./ (10^3);  % 第一组数据的阻抗值
data_20_Rs = (data_20(:, 2))' ./ (10^3); % 第一组数据的串联电阻值
data_20_Cs = (data_20(:, 3))' .* (10^9); % 第一组数据的串联电容值
data_20_Ls = (data_20(:, 4))'; % 第一组数据的串联电感值

% a = a' 为转置
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_30_Z = (data_30(:, 1))' ./ (10^3);  % 第一组数据的阻抗值
data_30_Rs = (data_30(:, 2))' ./ (10^3); % 第一组数据的串联电阻值
data_30_Cs = (data_30(:, 3))' .* (10^9); % 第一组数据的串联电容值
data_30_Ls = (data_30(:, 4))'; % 第一组数据的串联电感值

% a = a' 为转置
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_40_Z = (data_40(:, 1))' ./ (10^3);  % 第一组数据的阻抗值
data_40_Rs = (data_40(:, 2))' ./ (10^3); % 第一组数据的串联电阻值
data_40_Cs = (data_40(:, 3))' .* (10^9); % 第一组数据的串联电容值
data_40_Ls = (data_40(:, 4))'; % 第一组数据的串联电感值

% a = a' 为转置
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_50_Z = (data_50(:, 1))' ./ (10^3);  % 第一组数据的阻抗值
data_50_Rs = (data_50(:, 2))' ./ (10^3); % 第一组数据的串联电阻值
data_50_Cs = (data_50(:, 3))' .* (10^9); % 第一组数据的串联电容值
data_50_Ls = (data_50(:, 4))'; % 第一组数据的串联电感值

% a = a' 为转置
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_60_Z = (data_60(:, 1))' ./ (10^3);  % 第一组数据的阻抗值
data_60_Rs = (data_60(:, 2))' ./ (10^3); % 第一组数据的串联电阻值
data_60_Cs = (data_60(:, 3))' .* (10^9); % 第一组数据的串联电容值
data_60_Ls = (data_60(:, 4))'; % 第一组数据的串联电感值

% a = a' 为转置
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_70_Z = (data_70(:, 1))' ./ (10^3);  % 第一组数据的阻抗值
data_70_Rs = (data_70(:, 2))' ./ (10^3); % 第一组数据的串联电阻值
data_70_Cs = (data_70(:, 3))' .* (10^9); % 第一组数据的串联电容值
data_70_Ls = (data_70(:, 4))'; % 第一组数据的串联电感值

% a = a' 为转置
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_80_Z = (data_80(:, 1))' ./ (10^3);  % 第一组数据的阻抗值
data_80_Rs = (data_80(:, 2))' ./ (10^3); % 第一组数据的串联电阻值
data_80_Cs = (data_80(:, 3))' .* (10^9); % 第一组数据的串联电容值
data_80_Ls = (data_80(:, 4))'; % 第一组数据的串联电感值

% a = a' 为转置
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_90_Z = (data_90(:, 1))' ./ (10^3);  % 第一组数据的阻抗值
data_90_Rs = (data_90(:, 2))' ./ (10^3); % 第一组数据的串联电阻值
data_90_Cs = (data_90(:, 3))' .* (10^9); % 第一组数据的串联电容值
data_90_Ls = (data_90(:, 4))'; % 第一组数据的串联电感值

% a = a' 为转置
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_100_Z = (data_100(:, 1))' ./ (10^3);  % 第一组数据的阻抗值
data_100_Rs = (data_100(:, 2))' ./ (10^3); % 第一组数据的串联电阻值
data_100_Cs = (data_100(:, 3))' .* (10^9); % 第一组数据的串联电容值
data_100_Ls = (data_100(:, 4))'; % 第一组数据的串联电感值

figure(1);
%set(gcf, 'position', [100 100 750 450]);

%subplot(2, 2, 1,'position', [0.08, 0.6, 0.35, 0.3]);
hold on;
grid on
PZ1 = plot(x, data_20_Z, '.b', 'LineWidth', 1);
PZ2 = plot(x, data_30_Z, '.r', 'LineWidth', 1);
PZ3 = plot(x, data_40_Z, '.g', 'LineWidth', 1);
PZ4 = plot(x, data_50_Z, '.y', 'LineWidth', 1);
PZ5 = plot(x, data_60_Z, '.k', 'LineWidth', 1);
PZ6 = plot(x, data_70_Z, 'Linestyle', 'none', 'Marker', '.','color', [155 48 255]/255, 'LineWidth', 1);
PZ7 = plot(x, data_80_Z, 'Linestyle', 'none', 'Marker', '.', 'color', [255 165 0]/255, 'LineWidth', 1);
PZ8 = plot(x, data_90_Z, 'Linestyle', 'none', 'Marker', '.', 'color', [0 191 255]/255, 'LineWidth', 1);
PZ9 = plot(x, data_100_Z, 'Linestyle', 'none','Marker', '.', 'color', [255 192 203]/255, 'LineWidth', 1);
ylabel('Z / Kohm');
legend([PZ1, PZ2, PZ3, PZ4, PZ5, PZ6, PZ7, PZ8, PZ9], { '20Hz';...
                                                               '30Hz';...
                                                               '40Hz';...
                                                               '50Hz';...
                                                               '60Hz';...
                                                               '70Hz';...
                                                               '80Hz';...
                                                               '90Hz';...
                                                               '100Hz'},...
                                                               'location','bestoutside');  %图例标注
figure(2);
%set(gcf, 'position', [100 100 750 450]);

%subplot(2, 2, 1,'position', [0.08, 0.6, 0.35, 0.3]);
hold on;
grid on
PRs1 = plot(x, data_20_Rs, '.b', 'LineWidth', 1);
PRs2 = plot(x, data_30_Rs, '.r', 'LineWidth', 1);
PRs3 = plot(x, data_40_Rs, '.g', 'LineWidth', 1);
PRs4 = plot(x, data_50_Rs, '.y', 'LineWidth', 1);
PRs5 = plot(x, data_60_Rs, '.k', 'LineWidth', 1);
PRs6 = plot(x, data_70_Rs, 'Linestyle', 'none', 'Marker', '.','color', [155 48 255]/255, 'LineWidth', 1);
PRs7 = plot(x, data_80_Rs, 'Linestyle', 'none', 'Marker', '.', 'color', [255 165 0]/255, 'LineWidth', 1);
PRs8 = plot(x, data_90_Rs, 'Linestyle', 'none', 'Marker', '.', 'color', [0 191 255]/255, 'LineWidth', 1);
PRs9 = plot(x, data_100_Rs, 'Linestyle', 'none','Marker', '.', 'color', [255 192 203]/255, 'LineWidth', 1);
ylabel('Rs / Kohm');
legend([PRs1, PRs2, PRs3, PRs4, PRs5, PRs6, PRs7, PRs8, PRs9], { '20Hz';...
                                                               '30Hz';...
                                                               '40Hz';...
                                                               '50Hz';...
                                                               '60Hz';...
                                                               '70Hz';...
                                                               '80Hz';...
                                                               '90Hz';...
                                                               '100Hz'},...
                                                               'location','bestoutside');  %图例标注                                                        
                                                           
figure(3);
%set(gcf, 'position', [100 100 750 450]);

%subplot(2, 2, 1,'position', [0.08, 0.6, 0.35, 0.3]);
hold on;
grid on
PCs1 = plot(x, data_20_Cs, '.b', 'LineWidth', 1);
PCs2 = plot(x, data_30_Cs, '.r', 'LineWidth', 1);
PCs3 = plot(x, data_40_Cs, '.g', 'LineWidth', 1);
PCs4 = plot(x, data_50_Cs, '.y', 'LineWidth', 1);
PCs5 = plot(x, data_60_Cs, '.k', 'LineWidth', 1);
PCs6 = plot(x, data_70_Cs, 'Linestyle', 'none', 'Marker', '.','color', [155 48 255]/255, 'LineWidth', 1);
PCs7 = plot(x, data_80_Cs, 'Linestyle', 'none', 'Marker', '.', 'color', [255 165 0]/255, 'LineWidth', 1);
PCs8 = plot(x, data_90_Cs, 'Linestyle', 'none', 'Marker', '.', 'color', [0 191 255]/255, 'LineWidth', 1);
PCs9 = plot(x, data_100_Cs, 'Linestyle', 'none','Marker', '.', 'color', [255 192 203]/255, 'LineWidth', 1);
ylabel('Cs / nF');
legend([PCs1, PCs2, PCs3, PCs4, PCs5, PCs6, PCs7, PCs8, PCs9], { '20Hz';...
                                                               '30Hz';...
                                                               '40Hz';...
                                                               '50Hz';...
                                                               '60Hz';...
                                                               '70Hz';...
                                                               '80Hz';...
                                                               '90Hz';...
                                                               '100Hz'},...
                                                               'location','bestoutside');  %图例标注     
figure(4);
%set(gcf, 'position', [100 100 750 450]);

%subplot(2, 2, 1,'position', [0.08, 0.6, 0.35, 0.3]);
hold on;
grid on
PLs1 = plot(x, data_20_Ls, '.b', 'LineWidth', 1);
PLs2 = plot(x, data_30_Ls, '.r', 'LineWidth', 1);
PLs3 = plot(x, data_40_Ls, '.g', 'LineWidth', 1);
PLs4 = plot(x, data_50_Ls, '.y', 'LineWidth', 1);
PLs5 = plot(x, data_60_Ls, '.k', 'LineWidth', 1);
PLs6 = plot(x, data_70_Ls, 'Linestyle', 'none', 'Marker', '.','color', [155 48 255]/255, 'LineWidth', 1);
PLs7 = plot(x, data_80_Ls, 'Linestyle', 'none', 'Marker', '.', 'color', [255 165 0]/255, 'LineWidth', 1);
PLs8 = plot(x, data_90_Ls, 'Linestyle', 'none', 'Marker', '.', 'color', [0 191 255]/255, 'LineWidth', 1);
PLs9 = plot(x, data_100_Ls, 'Linestyle', 'none','Marker', '.', 'color', [255 192 203]/255, 'LineWidth', 1);
ylabel('Ls / H');
legend([PLs1, PLs2, PLs3, PLs4, PLs5, PLs6, PLs7, PLs8, PLs9], { '20Hz';...
                                                               '30Hz';...
                                                               '40Hz';...
                                                               '50Hz';...
                                                               '60Hz';...
                                                               '70Hz';...
                                                               '80Hz';...
                                                               '90Hz';...
                                                               '100Hz'},...
                                                               'location','bestoutside');  %图例标注     