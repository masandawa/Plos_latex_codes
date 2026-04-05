% Pie charts for intervention components (Updated with data from Table 2)
figure('Position', [100, 100, 1600, 500]);

% Pie chart 1: Intervention Strategy
subplot(1, 4, 1);
strategy_data = [35, 8];
strategy_labels = {'PC', 'Integrated'};
h1 = pie(strategy_data);
title('(a) Intervention Strategy', 'FontSize', 12, 'FontWeight', 'bold');
% Remove text from slices
p1 = findobj(h1, 'Type', 'text');
for i = 1:length(p1)
    p1(i).String = '';
end
legend_labels1 = {sprintf('PC (35, %d%%)', round(35/43*100)), ...
                  sprintf('Integrated (8, %d%%)', round(8/43*100))};
legend(legend_labels1, 'Location', 'eastoutside', 'FontSize', 9);

% Pie chart 2: Delivery Platform (updated)
subplot(1, 4, 2);
platform_data = [5, 38];                      % School: 5, Community: 38
platform_labels = {'School', 'Community'};
h2 = pie(platform_data);
title('(b) Delivery Platform', 'FontSize', 12, 'FontWeight', 'bold');
p2 = findobj(h2, 'Type', 'text');
for i = 1:length(p2)
    p2(i).String = '';
end
legend_labels2 = {sprintf('School (5, %d%%)', round(5/43*100)), ...
                  sprintf('Community (38, %d%%)', round(38/43*100))};
legend(legend_labels2, 'Location', 'eastoutside', 'FontSize', 9);

% Pie chart 3: Target Population
subplot(1, 4, 3);
target_data = [17, 5, 2, 19];
target_labels = {'Community-wide', 'SAC only', 'WRA only', 'SAC + Adults'};
h3 = pie(target_data);
title('(c) Target Population', 'FontSize', 12, 'FontWeight', 'bold');
p3 = findobj(h3, 'Type', 'text');
for i = 1:length(p3)
    p3(i).String = '';
end
legend_labels3 = {sprintf('Community-wide (17, %d%%)', round(17/43*100)), ...
                  sprintf('SAC only (5, %d%%)', round(5/43*100)), ...
                  sprintf('WRA only (2, %d%%)', round(2/43*100)), ...
                  sprintf('SAC + Adults (19, %d%%)', round(19/43*100))};
legend(legend_labels3, 'Location', 'eastoutside', 'FontSize', 9);

% Pie chart 4: Treatment Regimen
subplot(1, 4, 4);
regimen_data = [40, 3];
regimen_labels = {'Single therapy', 'Dual therapy'};
h4 = pie(regimen_data);
title('(d) Treatment Regimen', 'FontSize', 12, 'FontWeight', 'bold');
p4 = findobj(h4, 'Type', 'text');
for i = 1:length(p4)
    p4(i).String = '';
end
legend_labels4 = {sprintf('Single therapy (40, %d%%)', round(40/43*100)), ...
                  sprintf('Dual therapy (3, %d%%)', round(3/43*100))};
legend(legend_labels4, 'Location', 'eastoutside', 'FontSize', 9);

% Optional overall title
% sgtitle('Distribution of Intervention Components (N = 43 studies)', 'FontSize', 14, 'FontWeight', 'bold');
set(gcf, 'Color', 'white');