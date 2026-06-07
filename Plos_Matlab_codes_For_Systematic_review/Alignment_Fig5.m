% Data
labels = {'Explicit (2011–2020 & 2021–2030)', 'Implicit', 'None'};
values = [12, 21, 9];
total  = sum(values);

% Colors
colors = [0.20 0.49 0.74;   % blue  - Explicit
          0.55 0.78 0.42;   % green - Implicit
          0.89 0.35 0.33];  % red   - None

% Pie chart
figure;
p = pie(values);

% Apply colors and format labels with % and n
for i = 1:length(values)
    % Patch (slice)
    p(2*i-1).FaceColor = colors(i,:);
    p(2*i-1).EdgeColor = 'white';
    p(2*i-1).LineWidth = 1.5;

    % Text label
    p(2*i).String = sprintf('%s\nn = %d (%.1f%%)', ...
                    labels{i}, values(i), (values(i)/total)*100);
    p(2*i).FontSize  = 11;
    p(2*i).FontWeight = 'bold';
    p(2*i).Color     = [0.1 0.1 0.1];
end

% Explode the largest slice for emphasis
explode = [0 1 0];
pie(values, explode);

% Re-apply after explode redraw
p = findobj(gca, 'Type', 'Patch');
for i = 1:length(p)
    p(i).FaceColor = colors(length(p)+1-i, :);
    p(i).EdgeColor = 'white';
    p(i).LineWidth = 1.5;
end

% Title
%title({'Alignment of Included Studies with WHO Roadmap Targets'; ...
   %    sprintf('(n = %d)', total)}, ...
   %    'FontSize', 13, 'FontWeight', 'bold');

% Legend
legend(labels, 'Location', 'southoutside', 'Orientation', ...
       'horizontal', 'FontSize', 10);

