%% Data Setup
counts = [14, 28];
pcts   = round(counts / sum(counts) * 100);
labels = {'Reported Time Horizons', 'Did Not Specify Timelines'};
clrs   = [0.3 0.7 0.4; 0.8 0.3 0.5];

%% --- Pie Chart ---
figure('Position', [100 100 600 500]);

p = pie(counts, {'', ''});

% Slice 1
p(1).FaceColor = clrs(1,:);
p(1).EdgeColor = 'white';
p(1).LineWidth = 1.5;

% Slice 2
p(3).FaceColor = clrs(2,:);
p(3).EdgeColor = 'white';
p(3).LineWidth = 1.5;

% Slice 1 label
p(2).String     = sprintf('%d%%', pcts(1));
p(2).FontSize   = 13;
p(2).FontWeight = 'bold';
p(2).Color      = 'white';

% Slice 2 label
p(4).String     = sprintf('%d%%', pcts(2));
p(4).FontSize   = 13;
p(4).FontWeight = 'bold';
p(4).Color      = 'white';

%% Legend
legend({sprintf('%s (n=%d, %d%%)', labels{1}, counts(1), pcts(1)), ...
        sprintf('%s (n=%d, %d%%)', labels{2}, counts(2), pcts(2))}, ...
        'Location', 'southoutside', 'FontSize', 10, 'Box', 'off');