% Helminth species studied

clear; clc; close all;

species = {'H','R','RH','RHW','RHWS','S','W','Other'};
counts = [10 3 5 17 1 1 1 4];

percentages = round((counts/42)*100);

data = [counts' percentages'];

% Create figure
figure('Units','inches','Position',[2 2 7 4.5],'Color','white');

% Horizontal grouped bar chart
b = barh(data,'grouped','BarWidth',0.7);

b(1).FaceColor = [0.2 0.6 0.9];   % blue
b(2).FaceColor = [0.9 0.4 0.1];   % orange

% Axis labels
xlabel('Articles (%)','FontSize',11,'FontWeight','bold');
ylabel('Helminth type','FontSize',11,'FontWeight','bold');

% Title
title('Helminth species studied','FontSize',12,'FontWeight','bold');

% Y-axis categories
yticks(1:length(species))
yticklabels(species)

% Legend
legend({'Number of Articles','Percentage'}, ...
       'Location','southeast','Box','off')

% Improve axis appearance
set(gca,...
    'FontSize',10,...
    'LineWidth',1,...
    'Box','on',...
    'TickDir','out')

grid on

% Tight layout
set(gca,'LooseInset',get(gca,'TightInset'))

% Save as high-resolution TIFF (600 dpi)
print(gcf,'Helminth_species_studied','-dtiff','-r600')
