function features = helperscatfeatures(x,sf)
% Copyright 2020 Michio Inoue

features = featureMatrix(sf,x(1:2^19),'Transform','log');
features = features(:,1:8:end)';
end