cp = classperf(label_all, yFit)
[X,Y,C,AUC] = perfcurve(label_all, yFit, 1);
clear X
clear Y
clear C

Acc=cp.CorrectRate;
sens=cp.sensitivity;
spec=cp.specificity;


m = cp.CountingMatrix
m(end,:)=[];
Diagonal=diag(m);
sum_rows=sum(m,2);
Precision=Diagonal./sum_rows;
Overall_Precision=mean(Precision, 'omitnan');
sum_col=sum(m,1);
recall=Diagonal./sum_col';
overall_recall=mean(recall, 'omitnan');
F1_Score=2*((Overall_Precision*overall_recall)/(Overall_Precision+overall_recall));

acc(counter)=Acc;
auc(counter)=AUC;
f1(counter)=F1_Score;

clearvars m Diagonal sum_rows sum_col sens spec