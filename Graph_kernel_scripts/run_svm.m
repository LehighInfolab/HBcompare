function [yFit] = run_svm(Kernel,multiclass, label_all)
%RUN_SVM Summary of this function goes here
%   Detailed explanation goes here

% norm_kernel = normalizekm(Kernel);
norm_kernel = Kernel

if multiclass == 0
    SVMModel = fitcsvm(norm_kernel,label_all);
elseif multiclass == 1
    SVMModel = fitcecoc(norm_kernel,label_all);
end

CVSVMModel = crossval(SVMModel);
yFit = kfoldPredict(CVSVMModel)
disp("Predictions done.")

clearvars norm_kernel SVMModel CVSVMModel

end

