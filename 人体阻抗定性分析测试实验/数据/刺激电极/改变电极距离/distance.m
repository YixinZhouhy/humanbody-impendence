clc;
clear;

x = [1:1:200];
data_40 = importdata('40mm.txt');
data_50 = importdata('50mm.txt');
data_60 = importdata('60mm.txt');

% a = a' Ϊת��
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_40_Z = (data_40(:, 1))' ./ (10^3);  % ��һ�����ݵ��迹ֵ
data_40_Rs = (data_40(:, 2))' ./ (10^3); % ��һ�����ݵĴ�������ֵ
data_40_Cs = (data_40(:, 3))' .* (10^9); % ��һ�����ݵĴ�������ֵ
data_40_Ls = (data_40(:, 4))'; % ��һ�����ݵĴ������ֵ

% a = a' Ϊת��
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_50_Z = (data_50(:, 1))' ./ (10^3);  % ��һ�����ݵ��迹ֵ
data_50_Rs = (data_50(:, 2))' ./ (10^3); % ��һ�����ݵĴ�������ֵ
data_50_Cs = (data_50(:, 3))' .* (10^9); % ��һ�����ݵĴ�������ֵ
data_50_Ls = (data_50(:, 4))'; % ��һ�����ݵĴ������ֵ

% a = a' Ϊת��
% units  Z  : Kohm  Rs : Kohm  Cs : nF  Ls : F
data_60_Z = (data_60(:, 1))' ./ (10^3);  % ��һ�����ݵ��迹ֵ
data_60_Rs = (data_60(:, 2))' ./ (10^3); % ��һ�����ݵĴ�������ֵ
data_60_Cs = (data_60(:, 3))' .* (10^9); % ��һ�����ݵĴ�������ֵ
data_60_Ls = (data_60(:, 4))'; % ��һ�����ݵĴ������ֵ


figure(1);
%set(gcf, 'position', [100 100 750 450]);

%subplot(2, 2, 1,'position', [0.08, 0.6, 0.35, 0.3]);
hold on;
grid on
PZ1 = plot(x, data_40_Z, '.b', 'LineWidth', 1);
PZ2 = plot(x, data_50_Z, '.r', 'LineWidth', 1);
PZ3 = plot(x, data_60_Z, '.g', 'LineWidth', 1);
ylabel('Z / Kohm');
legend([PZ1, PZ2, PZ3], { '40Hz';...
                          '50Hz';...
                          '60Hz'},...
                          'location','bestoutside');  %ͼ����ע
                      
figure(2);
%set(gcf, 'position', [100 100 750 450]);

%subplot(2, 2, 1,'position', [0.08, 0.6, 0.35, 0.3]);
hold on;
grid on
PRs1 = plot(x, data_40_Rs, '.b', 'LineWidth', 1);
PRs2 = plot(x, data_50_Rs, '.r', 'LineWidth', 1);
PRs3 = plot(x, data_60_Rs, '.g', 'LineWidth', 1);
ylabel('Rs / Kohm');
legend([PRs1, PRs2, PRs3], { '40mm';...
                             '50mm';...
                             '60mm'},...
                             'location','bestoutside');  %ͼ����ע
                         
figure(3);
%set(gcf, 'position', [100 100 750 450]);

%subplot(2, 2, 1,'position', [0.08, 0.6, 0.35, 0.3]);
hold on;
grid on
PCs1 = plot(x, data_40_Cs, '.b', 'LineWidth', 1);
PCs2 = plot(x, data_50_Cs, '.r', 'LineWidth', 1);
PCs3 = plot(x, data_60_Cs, '.g', 'LineWidth', 1);
ylabel('Cs / nF');
legend([PCs1, PCs2, PCs3], { '40mm';...
                             '50mm';...
                             '60mm'},...
                             'location','bestoutside');  %ͼ����ע
                         
figure(4);
%set(gcf, 'position', [100 100 750 450]);

%subplot(2, 2, 1,'position', [0.08, 0.6, 0.35, 0.3]);
hold on;
grid on
PLs1 = plot(x, data_40_Ls, '.b', 'LineWidth', 1);
PLs2 = plot(x, data_50_Ls, '.r', 'LineWidth', 1);
PLs3 = plot(x, data_60_Ls, '.g', 'LineWidth', 1);
ylabel('Ls / H');
legend([PLs1, PLs2, PLs3], { '40mm';...
                             '50mm';...
                             '60mm'},...
                             'location','bestoutside');  %ͼ����ע
