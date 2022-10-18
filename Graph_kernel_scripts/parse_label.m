function [label_vec] = parse_label(label_embedding)

disp("Getting labels...")
mat = label_embedding;
sz = size(mat,1);
wd = size(mat,2)/3;
label_vec = {};
for i=1:sz
    t1 = {};
    lab = 0;
    for j=1:wd
        o1 = mat(i,j);
        o2 = mat(i,600+j);
        o3 = mat(i,1200+j);

        if o3 == 1
            lab = 3;
        elseif o1 == 1
            lab = 1;
        elseif o2 == 1
            lab = 2;
        end
        t1{j} = double(lab);
        
    end
    t2 = cell2mat(transpose(t1));
    t3 = struct("values",t2);
    label_vec{i} = t3;


end

clearvars o1 o2 o3 o4 sz wd lab t1 t2 t3 mat

end