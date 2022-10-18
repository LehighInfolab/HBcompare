function [adj_list] = parse_adj_list(temp2)

node_sz = size(temp2);
adj_list = {};

for ii=1:node_sz
    node_adj = {};
    for jj=1:node_sz
        if ii ~= jj
            if double(temp2(ii,jj))==double(1)
                node_adj = [node_adj,jj];
            end
        end
    end
    adj_list{ii} = cell2mat(node_adj);
end
adj_list = transpose(adj_list);

clearvars i ii jj mat temp1 temp2 node_sz node_adj 
end