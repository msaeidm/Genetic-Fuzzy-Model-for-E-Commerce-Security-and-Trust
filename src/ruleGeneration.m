function ruleSet = ruleGeneration(trainingData)
% ruleGeneration extracts fuzzy rules from training data.
%
% Input:
%   trainingData - dataset containing secure and insecure examples
%
% Output:
%   ruleSet - generated fuzzy rules

% Example: Use clustering or thresholding to create fuzzy rules.
% This is a placeholder for your actual rule-generation logic.
numRules = 5; % For example, generate 5 rules
ruleSet = cell(numRules, 1);
for i = 1:numRules
    % Generate a rule based on training data (dummy rule)
    ruleSet{i} = sprintf('IF feature%d > %.2f THEN class = %s', i, rand, 'Safe');
end
end
