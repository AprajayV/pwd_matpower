function [genID] = generateID(gen_bus)
[counts,center] = hist(gen_bus,unique(gen_bus));
genID = [];
for i_ = 1:size(center,1); genID = [genID,1:counts(i_)]; end