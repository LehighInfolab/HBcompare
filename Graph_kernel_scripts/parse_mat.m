disp("Getting graphs and adjacency list...")
mat = X_feature_tensor;
sz = size(mat,1);
arr = {};
adj_arr = {};
for i=1:sz
    temp1=mat(i,:,:);
    temp2=double(squeeze(temp1));
    arr{i}=temp2;

%   Parse adjacency list from adjacency matrix
    adj_arr{i} = parse_adj_list(temp2);
end

Graphs = struct('am', arr, 'nl', parse_label(label_embedding), 'al', adj_arr);

clearvars -except Graphs label_embedding X_feature_tensor label_all

counter = 0;
acc = zeros(1, 10);
auc = zeros(1,10);
f1 = zeros(1,10);

disp("DONE!")

% for i=1:10
%     run("run_kernel.m")
% end