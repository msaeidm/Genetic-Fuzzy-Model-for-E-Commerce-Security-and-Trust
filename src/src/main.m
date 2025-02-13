% main.m - Entry point for the Genetic Fuzzy Model for E-Commerce Security

clear; clc;

fprintf('Starting Genetic Fuzzy Model for E-Commerce Security...\n');

% Load training and testing data
trainingData = csvread('../data/training_data.csv', 1, 0); % Adjust header lines if needed
testData = csvread('../data/test_data.csv', 1, 0);

% Generate initial fuzzy rules from training data
ruleSet = ruleGeneration(trainingData);
fprintf('Generated %d fuzzy rules.\n', length(ruleSet));

% Define genetic algorithm parameters
params.popSize = 50;
params.maxGen = 100;
params.mutationRate = 0.1;

% Optimize the fuzzy rule set using genetic algorithm
bestRuleSet = geneticAlgorithm(trainingData, params);
fprintf('Optimized fuzzy rule set obtained.\n');

% Evaluate the optimized model on test data
evaluationResults = evaluation(bestRuleSet, testData);

fprintf('Evaluation Results:\n');
fprintf('Accuracy: %.2f%%\n', evaluationResults.accuracy*100);
fprintf('Sensitivity: %.2f%%\n', evaluationResults.sensitivity*100);
fprintf('Specificity: %.2f%%\n', evaluationResults.specificity*100);

% Save evaluation metrics to a CSV file
metrics = [evaluationResults.accuracy, evaluationResults.sensitivity, evaluationResults.specificity];
csvwrite('../results/tables/performance_metrics.csv', metrics);
