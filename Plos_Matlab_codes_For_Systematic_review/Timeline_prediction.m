% Clear workspace and figures
clear; clc; close all;

% Data from the timeline
values = [65, 35];

% Create figure
figure('Position', [100, 100, 550, 500]);

% Create pie chart with percentage labels only
h = pie(values, {'65%', '35%'});

% Customize pie chart colors
set(h(1), 'FaceColor', [0.9 0.3 0.3]);  % Red for No (65%)
set(h(3), 'FaceColor', [0.3 0.7 0.3]);  % Green for Yes (35%)

% Enhance text appearance
for i = 2:2:length(h)
    if ishandle(h(i))
        set(h(i), 'FontSize', 14, 'FontWeight', 'bold', 'Color', 'white');
    end
end

% Add title
title('Timeline prediction', 'FontSize', 14, 'FontWeight', 'bold');

% Add legend
legend({'No (65%)', 'Yes (35%)'}, 'Location', 'eastoutside', 'FontSize', 11);