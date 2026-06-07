%% Data Setup
categories = {
    'Host-Based', 'Parasite-Based';
    'Deterministic', 'Stochastic';
    'Homogeneous (Flat)', 'Age-Structured'
};

counts = [13, 29; 26, 16; 14, 28];

titles = {'Transmission Unit', 'Mathematical Framework', 'Population Structure'};

colors = {[0.2 0.5 0.8; 0.9 0.4 0.2], ...
          [0.3 0.7 0.4; 0.8 0.3 0.5], ...
          [0.5 0.3 0.8; 0.2 0.7 0.7]};

%% --- Pie Charts (3 subplots) ---
figure('Position', [100 100 1200 420]);

for i = 1:3
    subplot(1, 3, i);

    % Pre-compute rounded whole number percentages
    total = sum(counts(i,:));
    pct1  = round(counts(i,1) / total * 100);
    pct2  = round(counts(i,2) / total * 100);

    % Draw pie and suppress default labels
    p = pie(counts(i,:), {'', ''});

    % Slice 1 styling
    p(1).FaceColor = colors{i}(1,:);
    p(1).EdgeColor = 'white';
    p(1).LineWidth = 1.5;

    % Slice 2 styling
    p(3).FaceColor = colors{i}(2,:);
    p(3).EdgeColor = 'white';
    p(3).LineWidth = 1.5;

    % Slice 1 label — whole number only e.g. 31%
    p(2).String     = sprintf('%d%%', pct1);
    p(2).FontSize   = 11;
    p(2).FontWeight = 'bold';
    p(2).Color      = 'white';

    % Slice 2 label — whole number only e.g. 69%
    p(4).String     = sprintf('%d%%', pct2);
    p(4).FontSize   = 11;
    p(4).FontWeight = 'bold';
    p(4).Color      = 'white';

    % Legend with count and whole number percentage
    labels = {sprintf('%s (n=%d, %d%%)', categories{i,1}, counts(i,1), pct1), ...
              sprintf('%s (n=%d, %d%%)', categories{i,2}, counts(i,2), pct2)};

    legend(labels, 'Location', 'southoutside', 'FontSize', 9, 'Box', 'off');

    title(titles{i}, 'FontSize', 13, 'FontWeight', 'bold');
end

%sgtitle('Study Characteristics Overview', 'FontSize', 15, 'FontWeight', 'bold');