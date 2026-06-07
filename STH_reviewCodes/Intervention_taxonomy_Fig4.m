%% Intervention Taxonomy - 4 Clean Pie Charts with Legends
figure('Position', [100 100 1200 900]);

%% ---- Color Palettes ----
col_strategy = [0.20 0.49 0.74; 0.89 0.35 0.33];
col_platform = [0.20 0.49 0.74; 0.55 0.78 0.42; 0.98 0.70 0.25];
col_target   = [0.20 0.49 0.74; 0.55 0.78 0.42; 0.98 0.70 0.25;
                0.89 0.35 0.33; 0.62 0.42 0.75; 0.99 0.55 0.24];
col_regimen  = [0.20 0.49 0.74; 0.89 0.35 0.33];

%% ---- 1. Strategy ----
subplot(2,2,1);
vals = [34 8];
labs = {'PC (81%)', 'Integrated (19%)'};
p = pie(vals);
for i = 1:length(vals)
    p(2*i-1).FaceColor = col_strategy(i,:);
    p(2*i-1).EdgeColor = 'white';
    p(2*i-1).LineWidth = 1.5;
    p(2*i).String      = '';
end
legend(labs, 'Location', 'southoutside', ...
       'Orientation', 'horizontal', 'FontSize', 9);
title('(a) Strategy', 'FontSize', 11, 'FontWeight', 'bold');

%% ---- 2. Platform ----
subplot(2,2,2);
vals = [16 6 20];
labs = {'CBD (38%)', 'SBD (14%)', 'SBD+CBD (48%)'};
explode = [0 0 1];
p = pie(vals, explode);
for i = 1:length(vals)
    p(2*i-1).FaceColor = col_platform(i,:);
    p(2*i-1).EdgeColor = 'white';
    p(2*i-1).LineWidth = 1.5;
    p(2*i).String      = '';
end
legend(labs, 'Location', 'southoutside', ...
       'Orientation', 'horizontal', 'FontSize', 9);
title('(b) Platform', 'FontSize', 11, 'FontWeight', 'bold');

%% ---- 3. Target Population ----
subplot(2,2,3);
vals = [14 17 4 2 2 3];
labs = {'Community-wide (33%)', 'PSAC+SAC+Adults (40%)', ...
        'PSAC+SAC (10%)',         'SAC only (5%)', ...
        'SAC+Adults (5%)',        'WRA (7%)'};
explode = [0 1 0 0 0 0];
p = pie(vals, explode);
for i = 1:length(vals)
    p(2*i-1).FaceColor = col_target(i,:);
    p(2*i-1).EdgeColor = 'white';
    p(2*i-1).LineWidth = 1.5;
    p(2*i).String      = '';
end
legend(labs, 'Location', 'southoutside', ...
       'Orientation', 'vertical', 'FontSize', 9);
title('(c) Target Population', 'FontSize', 11, 'FontWeight', 'bold');

%% ---- 4. Regimen ----
subplot(2,2,4);
vals = [39 3];
labs = {'Single therapy (95%)', 'Dual therapy (5%)'};
p = pie(vals);
for i = 1:length(vals)
    p(2*i-1).FaceColor = col_regimen(i,:);
    p(2*i-1).EdgeColor = 'white';
    p(2*i-1).LineWidth = 1.5;
    p(2*i).String      = '';
end
legend(labs, 'Location', 'southoutside', ...
       'Orientation', 'horizontal', 'FontSize', 9);
title('(d) Regimen', 'FontSize', 11, 'FontWeight', 'bold');



