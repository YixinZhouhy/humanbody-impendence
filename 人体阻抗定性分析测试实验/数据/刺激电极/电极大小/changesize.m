clc;
clear;

x= [1:1:200];
data_bb = importdata('大大.txt');
data_bs = importdata('大小.txt');
data_sb = importdata('小大.txt');
data_ss = importdata('小小.txt');

% a = a' 为转置
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_bb_Z = (data_bb(:, 1))' ./ (10^3);  % 第一组数据的阻抗值
data_bb_Rs = (data_bb(:, 2))' ./ (10^3); % 第一组数据的串联电阻值
data_bb_Cs = (data_bb(:, 3))' .* (10^9); % 第一组数据的串联电容值
data_bb_Ls = (data_bb(:, 4))'; % 第一组数据的串联电感值

% a = a' 为转置
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_bs_Z = (data_bs(:, 1))' ./ (10^3);  % 第一组数据的阻抗值
data_bs_Rs = (data_bs(:, 2))' ./ (10^3); % 第一组数据的串联电阻值
data_bs_Cs = (data_bs(:, 3))' .* (10^9); % 第一组数据的串联电容值
data_bs_Ls = (data_bs(:, 4))'; % 第一组数据的串联电感值

% a = a' 为转置
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_sb_Z = (data_sb(:, 1))' ./ (10^3);  % 第一组数据的阻抗值
data_sb_Rs = (data_sb(:, 2))' ./ (10^3); % 第一组数据的串联电阻值
data_sb_Cs = (data_sb(:, 3))' .* (10^9); % 第一组数据的串联电容值
data_sb_Ls = (data_sb(:, 4))'; % 第一组数据的串联电感值

% a = a' 为转置
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_ss_Z = (data_ss(:, 1))' ./ (10^3);  % 第一组数据的阻抗值
data_ss_Rs = (data_ss(:, 2))' ./ (10^3); % 第一组数据的串联电阻值
data_ss_Cs = (data_ss(:, 3))' .* (10^9); % 第一组数据的串联电容值
data_ss_Ls = (data_ss(:, 4))'; % 第一组数据的串联电感值

figure(1);
grid on ;
hold on;
PZ1 = plot(x, data_bb_Z, '.b', 'LineWidth', 2);
PZ2 = plot(x, data_bs_Z, '.r', 'LineWidth', 2);
PZ3 = plot(x, data_sb_Z, '.g', 'LineWidth', 2);
PZ4 = plot(x, data_ss_Z, '.y', 'LineWidth', 2);
%ylim([120 160]);
%title('各电极大小组合下阻抗Z值变化曲线图');
ylabel('Z / Kohm');
legend([PZ1, PZ2, PZ3, PZ4], {     '大大组合';...
                                   '大小组合';...
                                   '小大组合';...
                                   '小小组合'},...
                                   'location','bestoutside');  %图例标注


figure(2);
grid on ;
hold on;
PRs1 = plot(x, data_bb_Rs, '.b', 'LineWidth', 2);
PRs2 = plot(x, data_bs_Rs, '.r', 'LineWidth', 2);
PRs3 = plot(x, data_sb_Rs, '.g', 'LineWidth', 2);
PRs4 = plot(x, data_ss_Rs, '.y', 'LineWidth', 2);
%ylim([120 160]);
%title('各电极大小组合下串联电阻Rs值变化曲线图');
ylabel('Rs / Kohm');
legend([PRs1, PRs2, PRs3, PRs4], { '大大组合';...
                                   '大小组合';...
                                   '小大组合';...
                                   '小小组合'},...
                                   'location','bestoutside');  %图例标注

figure(3);
grid on ;
hold on;
PCs1 = plot(x, data_bb_Cs, '.b', 'LineWidth', 2);
PCs2 = plot(x, data_bs_Cs, '.r', 'LineWidth', 2);
PCs3 = plot(x, data_sb_Cs, '.g', 'LineWidth', 2);
PCs4 = plot(x, data_ss_Cs, '.y', 'LineWidth', 2);
%ylim([120 160]);
%title('各电极大小组合下串联电容Cs值变化曲线图');
ylabel('Cs / nF');
legend([PCs1, PCs2, PCs3, PCs4], { '大大组合';...
                                   '大小组合';...
                                   '小大组合';...
                                   '小小组合'},...
                                   'location','bestoutside');  %图例标注
 
figure(4);
grid on ;
hold on;
PLs1 = plot(x, data_bb_Ls, '.b', 'LineWidth', 2);
PLs2 = plot(x, data_bs_Ls, '.r', 'LineWidth', 2);
PLs3 = plot(x, data_sb_Ls, '.g', 'LineWidth', 2);
PLs4 = plot(x, data_ss_Ls, '.y', 'LineWidth', 2);
%ylim([120 160]);
%title('各电极大小组合下串联电感Ls值变化曲线图');
ylabel('Ls / H');
legend([PLs1, PLs2, PLs3, PLs4], { '大大组合';...
                                   '大小组合';...
                                   '小大组合';...
                                   '小小组合'},...
                                   'location','bestoutside');  %图例标注

