% Pie charts for intervention components (Updated data)
figure('Position', [100, 100, 1600, 500]);

% Pie chart 1: Intervention Strategy
subplot(1, 4, 1);
strategy_data = [31, 9, 3];
strategy_labels = {'PC only', 'Integrated', 'Not specified'};
h1 = pie(strategy_data);
title('(a) Intervention Strategy', 'FontSize', 12, 'FontWeight', 'bold');
% Remove text from slices
p1 = findobj(h1, 'Type', 'text');
for i = 1:length(p1)
    p1(i).String = '';
end
legend_labels1 = {sprintf('PC only (31, %d%%)', round(31/43*100)), ...
                  sprintf('Integrated (9, %d%%)', round(9/43*100)), ...
                  sprintf('Not specified (3, %d%%)', round(3/43*100))};
legend(legend_labels1, 'Location', 'eastoutside', 'FontSize', 9);

% Pie chart 2: Delivery Platform
subplot(1, 4, 2);
platform_data = [6, 12, 18, 2, 5];
platform_labels = {'SBD only', 'CBD only', 'Both', 'Health facility', 'Not specified'};
h2 = pie(platform_data);
title('(b) Delivery Platform', 'FontSize', 12, 'FontWeight', 'bold');
p2 = findobj(h2, 'Type', 'text');
for i = 1:length(p2)
    p2(i).String = '';
end
legend_labels2 = {sprintf('SBD only (6, %d%%)', round(6/43*100)), ...
                  sprintf('CBD only (12, %d%%)', round(12/43*100)), ...
                  sprintf('Both (18, %d%%)', round(18/43*100)), ...
                  sprintf('Health facility (2, %d%%)', round(2/43*100)), ...
                  sprintf('Not specified (5, %d%%)', round(5/43*100))};
legend(legend_labels2, 'Location', 'eastoutside', 'FontSize', 8);

% Pie chart 3: Target Population (Updated: SAC+adults = 23, Other category removed)
subplot(1, 4, 3);
target_data = [5, 9, 23, 2, 4];
target_labels = {'SAC only', 'Entire community', 'SAC+adults', 'WRA only', 'Not specified'};
h3 = pie(target_data);
title('(c) Target Population', 'FontSize', 12, 'FontWeight', 'bold');
p3 = findobj(h3, 'Type', 'text');
for i = 1:length(p3)
    p3(i).String = '';
end
legend_labels3 = {sprintf('SAC only (5, %d%%)', round(5/43*100)), ...
                  sprintf('Entire community (9, %d%%)', round(9/43*100)), ...
                  sprintf('SAC+adults (23, %d%%)', round(23/43*100)), ...
                  sprintf('WRA only (2, %d%%)', round(2/43*100)), ...
                  sprintf('Not specified (4, %d%%)', round(4/43*100))};
legend(legend_labels3, 'Location', 'eastoutside', 'FontSize', 8);

% Pie chart 4: Treatment Regimen
subplot(1, 4, 4);
regimen_data = [34, 2, 3, 4];
regimen_labels = {'Single drug', 'Dual therapy', 'Triple therapy', 'Mixed/Not specified'};
h4 = pie(regimen_data);
title(' (d) Treatment Regimen', 'FontSize', 12, 'FontWeight', 'bold');
p4 = findobj(h4, 'Type', 'text');
for i = 1:length(p4)
    p4(i).String = '';
end
legend_labels4 = {sprintf('Single drug (34, %d%%)', round(34/43*100)), ...
                  sprintf('Dual therapy (2, %d%%)', round(2/43*100)), ...
                  sprintf('Triple therapy (3, %d%%)', round(3/43*100)), ...
                  sprintf('Mixed/Not specified (4, %d%%)', round(4/43*100))};
legend(legend_labels4, 'Location', 'eastoutside', 'FontSize', 9);

%sgtitle('Distribution of Intervention Components (N = 43 studies)', 'FontSize', 14, 'FontWeight', 'bold');
set(gcf, 'Color', 'white');