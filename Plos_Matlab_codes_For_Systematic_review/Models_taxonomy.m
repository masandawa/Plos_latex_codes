% Option: Percentages only in legends (rounded to whole numbers), no text on pie slices
% Figure: All three pie charts in one figure
figure('Position', [100, 100, 1500, 500]);

% Pie chart 1: Transmission Unit
subplot(1, 3, 1);
transmission_data = [13, 30];
total_studies = 43;
h = pie(transmission_data);
title(' (a) Transmission Unit', 'FontSize', 14, 'FontWeight', 'bold');

% Remove all text from pie slices
p = findobj(h, 'Type', 'text');
for i = 1:length(p)
    p(i).String = '';
end

% Add legend with full labels and percentages (rounded to whole numbers)
legend_labels = {sprintf('Host-Based (13, %d%%)', round((13/43)*100)), ...
                 sprintf('Parasite-Based (30, %d%%)', round((30/43)*100))};
legend(legend_labels, 'Location', 'eastoutside', 'FontSize', 10, 'FontWeight', 'bold');

% Pie chart 2: Mathematical Framework
subplot(1, 3, 2);
framework_data = [23, 17, 3];
h2 = pie(framework_data);
title(' (b) Mathematical Framework', 'FontSize', 14, 'FontWeight', 'bold');

% Remove all text from pie slices
p2 = findobj(h2, 'Type', 'text');
for i = 1:length(p2)
    p2(i).String = '';
end

% Add legend with full labels and percentages (rounded to whole numbers)
legend_labels2 = {sprintf('Deterministic (23, %d%%)', round((23/43)*100)), ...
                  sprintf('Stochastic (17, %d%%)', round((17/43)*100)), ...
                  sprintf(' Comparative (DM-SD) (3, %d%%)', round((3/43)*100))};
legend(legend_labels2, 'Location', 'eastoutside', 'FontSize', 10, 'FontWeight', 'bold');

% Pie chart 3: Population Structure
subplot(1, 3, 3);
population_data = [14, 29];
h3 = pie(population_data);
title(' (c) Population Structure', 'FontSize', 14, 'FontWeight', 'bold');

% Remove all text from pie slices
p3 = findobj(h3, 'Type', 'text');
for i = 1:length(p3)
    p3(i).String = '';
end

% Add legend with full labels and percentages (rounded to whole numbers)
legend_labels3 = {sprintf('Flat (14, %d%%)', round((14/43)*100)), ...
                  sprintf('Age-Structured (29, %d%%)', round((29/43)*100))};
legend(legend_labels3, 'Location', 'eastoutside', 'FontSize', 10, 'FontWeight', 'bold');

% Add overall title
%sgtitle('Model Taxonomy Distribution (N = 43 studies)', 'FontSize', 16, 'FontWeight', 'bold');

% Adjust figure appearance
set(gcf, 'Color', 'white');