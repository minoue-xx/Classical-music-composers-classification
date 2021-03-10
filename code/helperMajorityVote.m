function [ClassVotes,ClassCounts] = helperMajorityVote(predLabels,origLabels,classes)
% Copyright 2020 Michio Inoue

% Make categorical arrays if the labels are not already categorical
predLabels = categorical(predLabels);
origLabels = categorical(origLabels);

% Expects both predLabels and origLabels to be categorical vectors
Npred = numel(predLabels);
Norig = numel(origLabels);
Nwin = Npred/Norig;
predLabels = reshape(predLabels,Nwin,Norig);
ClassCounts = countcats(predLabels);
[~,idx] = max(ClassCounts);
ClassVotes = classes(idx);