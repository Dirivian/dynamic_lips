res =0;
clear result;
for i = 201:225
k =c(i,:);
loglik1 = dhmm_logprob(k, priorb, transmatb, obsmatb);
loglik2 = dhmm_logprob(k, priorc, transmatc, obsmatc);
disp(k);
disp(loglik1);
disp(loglik2);

if loglik1 <loglik2
    result(i)=0;
else
result(i)=1;
res = res+1;
end
end