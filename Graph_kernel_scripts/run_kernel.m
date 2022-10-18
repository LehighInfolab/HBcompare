rng(counter+50,"twister");
multiclass = true
iter = 10

%%%%%%%%% Running Kernels %%%%%%%%%

% counter = counter + 1
% disp("Getting kernel...")
% [Kernel, runtime] = RWkernel(Graphs, 0.1); % works
% 
% disp("Kernel done. Normalizing kernel...")
% yFit = run_svm(Kernel, multiclass, label_all);
% run("get_perf.m")
% 


counter = counter + 1
[Kernel, runtime] = lRWkernel(Graphs, 0.01, 1); % works but low acc

disp("Kernel done. Normalizing kernel...")
yFit = run_svm(Kernel, multiclass, label_all);
run("get_perf.m")
 



counter = counter + 1
[Kernel, runtime] = untilpRWkernel(Graphs, 5, 0, "output"); % works and decent acc - p=4,5,6 highest acc

disp("Kernel done. Normalizing kernel...")
norm_kernel = normalizekm(Kernel);

disp("Kernel done. Normalizing kernel...")
yFit = run_svm(Kernel, multiclass, label_all);
run("get_perf.m")


% 
% 
% counter = counter + 1
% [Kernel, runtime] = l3graphletkernel(Graphs)
% 
% disp("Kernel done. Normalizing kernel...")
% yFit = run_svm(Kernel, multiclass, label_all);
% run("get_perf.m")
% 
% 
% 
% counter = counter + 1
% [Kernel, runtime] = RGkernel(Graphs, 2)
% 
% disp("Kernel done. Normalizing kernel...")
% yFit = run_svm(Kernel, multiclass, label_all);
% run("get_perf.m")
% 
% 
% 
% counter = counter + 1

% [Kernel, runtime] = WL(Graphs, iter, 1)
% Kernel = cell2mat(Kernel(iter))
% 
% disp("Kernel done. Normalizing kernel...")
% yFit = run_svm(Kernel, multiclass, label_all);
% run("get_perf.m")
% 


counter = counter + 1
[Kernel, runtime] = WLedge(Graphs, iter, 1)
Kernel = cell2mat(Kernel(iter))

disp("Kernel done. Normalizing kernel...")
yFit = run_svm(Kernel, multiclass, label_all);
run("get_perf.m")


% 
% counter = counter + 1
% [Kernel, runtime] = WLspdelta(Graphs, iter, 1, 0)
% Kernel = cell2mat(Kernel(iter))
% 
% disp("Kernel done. Normalizing kernel...")
% norm_kernel = normalizekm(Kernel);
% 
% if multiclass == 0
%     SVMModel = fitcsvm(norm_kernel,label_all);
% elseif multiclass == 1
%     SVMModel = fitcecoc(norm_kernel,label_all);
% end
% CVSVMModel = crossval(SVMModel);
% yFit = kfoldPredict(CVSVMModel)
% disp("Predictions done.")
% 
% run("get_perf.m")
% 
% 
% 
counter = counter + 1
[Kernel, runtime] = spkernel(Graphs,1)

disp("Kernel done. Normalizing kernel...")
yFit = run_svm(Kernel, multiclass, label_all);
run("get_perf.m")


% sample = samplesize(0.05, 0.05, 10)
% 
% counter = counter + 1
% [Kernel, runtime] = gestkernel3(Graphs, sample);
% 
% disp("Kernel done. Normalizing kernel...")
% yFit = run_svm(Kernel, multiclass, label_all);
% run("get_perf.m")
% 
% 
% 
% counter = counter + 1
% [Kernel, runtime] = gestkernel4(Graphs, sample);
% 
% disp("Kernel done. Normalizing kernel...")
% yFit = run_svm(Kernel, multiclass, label_all);
% run("get_perf.m")
% 
% 
% 
% counter = counter + 1
% [Kernel, runtime] = gestkernel5(Graphs, sample);
% 
% disp("Kernel done. Normalizing kernel...")
% yFit = run_svm(Kernel, multiclass, label_all);
% run("get_perf.m")
% 
% 
% 
counter = counter + 1
[Kernel, runtime] = connectedkernel(Graphs, 3)

disp("Kernel done. Normalizing kernel...")
yFit = run_svm(Kernel, multiclass, label_all);
run("get_perf.m")



counter = counter + 1
[Kernel, runtime] = allkernel(Graphs, 3)

disp("Kernel done. Normalizing kernel...")
yFit = run_svm(Kernel, multiclass, label_all);
run("get_perf.m")
