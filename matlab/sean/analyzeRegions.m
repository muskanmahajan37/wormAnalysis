% Load an experiment
% You should only change e_name per experiment

root_exp_dir  = '/Users/sean/Desktop/';
exp_name = '2018_06_27_SAY47 test';

%%

experiment_directory = fullfile(root_exp_dir, exp_name);

% Channel registration
e = Experiment(experiment_directory);
e.registerChannels();
save(fullfile(experiment_directory, exp_name), strcat('e');

% Save region data
writetable(e.reg.regions.all, fullfile(root_exp_dir, exp_name, strcat(exp_name, '_region_data.csv')));

%% Mean Plots
e.plotMeanByStrain('reg', 'E');
print(gcf, '-dpdf', fullfile(experiment_directory, 'figs', 'E_by_strain.pdf'));

e.plotMeanByStrain('reg', 'i410');
print(gcf, '-dpdf', fullfile(experiment_directory, 'figs', 'i410_by_strain.pdf'));

e.plotMeanByStrain('reg', 'i470');
print(gcf, '-dpdf', fullfile(experiment_directory, 'figs', 'i470_by_strain.pdf'));

close all;

%% Iterative Plots

