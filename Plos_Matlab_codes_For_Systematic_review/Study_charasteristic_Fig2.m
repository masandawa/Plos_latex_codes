%% Publication Year Distribution - Bar Chart
figure('Position', [100 100 800 500]);

%% ---- Data ----
years  = 2015:2024;
counts = [4 4 4 6 5 4 6 2 3 4];

%% ---- Bar Chart ----
b = bar(years, counts, 0.6);
b.FaceColor = [0.20 0.49 0.74];
b.EdgeColor = 'white';
b.LineWidth = 1.2;

%% ---- Axes Formatting ----
ax = gca;
ax.XTick      = years;
ax.XTickLabel = string(years);
ax.YLim       = [0 max(counts) + 1.5];
ax.XLim       = [2014.5 2024.5];
ax.FontSize   = 10;
ax.Box        = 'off';
ax.GridColor  = [0.8 0.8 0.8];
ax.YGrid      = 'on';
ax.GridAlpha  = 0.5;

%% ---- Labels and Title ----
xlabel('Publication Year', 'FontSize', 11, 'FontWeight', 'bold');
ylabel('Number of Studies',  'FontSize', 11, 'FontWeight', 'bold');
%title('Distribution of Included Studies by Publication Year (2015–2024)', ...
     % 'FontSize', 12, 'FontWeight', 'bold');



