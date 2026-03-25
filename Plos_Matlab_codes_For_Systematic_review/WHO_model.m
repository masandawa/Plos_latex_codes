% Clear workspace and figures
clear; clc; close all;

% Data from WHO model
values = [26, 17];
total = sum(values);
percentages = (values / total) * 100;

% Round percentages to nearest integer
percentages_rounded = round(percentages);

% Create figure
figure('Position', [100, 100, 650, 550]);

% Create pie chart with rounded percentage labels
h = pie(values, {sprintf('%d%%', percentages_rounded(1)), sprintf('%d%%', percentages_rounded(2))});

% Customize pie chart colors
set(h(1), 'FaceColor', [0.2 0.5 0.8]);  % Blue for Morbidity target
set(h(3), 'FaceColor', [0.3 0.7 0.4]);  % Green for Interruption transmission

% Enhance text appearance
for i = 2:2:length(h)
    if ishandle(h(i))
        set(h(i), 'FontSize', 14, 'FontWeight', 'bold', 'Color', 'white');
    end
end

% Add title
title('WHO Model: Strategic Priorities', 'FontSize', 14, 'FontWeight', 'bold');

% Add legend with detailed information using rounded percentages
legend({sprintf('Morbidity target (2011-2020): %d (%d%%)', values(1), percentages_rounded(1)), ...
        sprintf('Interruption transmission (2021-2030): %d (%d%%)', values(2), percentages_rounded(2))}, ...
        'Location', 'eastoutside', 'FontSize', 10);

% Add total annotation
annotation('textbox', [0.15, 0.02, 0.7, 0.05], ...
    'String', sprintf('Grand Total: %d', total), ...
    'HorizontalAlignment', 'center', ...
    'FontSize', 11, ...
    'FontWeight', 'bold', ...
    'EdgeColor', 'none');

% Display statistics in command window
fprintf('WHO Model Statistics:\n');
fprintf('=======================\n');
fprintf('Morbidity target (2011-2020):        %d (%d%%)\n', values(1), percentages_rounded(1));
fprintf('Interruption transmission (2021-2030): %d (%d%%)\n', values(2), percentages_rounded(2));
fprintf('Grand Total: %d\n', total);