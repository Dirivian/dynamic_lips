O = 36;
Q = 37;

prior1 = normalise(rand(Q,1));
transmat1 = mk_stochastic(rand(Q,Q));
obsmat1 = mk_stochastic(rand(Q,O));
binmat = binmatrix(1:200,1:7);
binmat(binmat==0)=4;
[LL, priorbin, transmatbin, obsmatbin] = dhmm_em(binmat, prior1, transmat1, obsmat1, 'max_iter', 500);
bluemat = bluematrix(1:200,1:7);
bluemat(bluemat==0)=4;
[LL, priorblue, transmatblue, obsmatblue] = dhmm_em(bluemat, prior1, transmat1, obsmat1, 'max_iter', 500);
whitemat = whitematrix(1:200,1:6);
whitemat(whitemat==0)=4;
[LL, priorwhite, transmatwhite, obsmatwhite] = dhmm_em(whitemat, prior1, transmat1, obsmat1, 'max_iter', 500);
greenmat = greenmatrix(1:200,1:6);
greenmat(greenmat==0)=4;
[LL, priorgreen, transmatgreen, obsmatgreen] = dhmm_em(greenmat, prior1, transmat1, obsmat1, 'max_iter', 500);
redmat = redmatrix(1:200,1:6);
redmat(redmat==0)=4;
[LL, priorred, transmatred, obsmatred] = dhmm_em(redmat, prior1, transmat1, obsmat1, 'max_iter', 500);
eightmat = eightmatrix(1:80,1:6);
eightmat(eightmat==0)=4;
[LL, prioreight, transmateight, obsmateight] = dhmm_em(eightmat, prior1, transmat1, obsmat1, 'max_iter', 500);
fourmat = fourmatrix(1:80,1:7);
fourmat(fourmat==0)=4;
[LL, priorfour, transmatfour, obsmatfour] = dhmm_em(fourmat, prior1, transmat1, obsmat1, 'max_iter', 500);
fivemat = fivematrix(1:80,1:8);
fivemat(fivemat==0)=4;
[LL, priorfive, transmatfive, obsmatfive] = dhmm_em(fivemat, prior1, transmat1, obsmat1, 'max_iter', 500);

setmat = setmatrix(1:200,1:8);
setmat(setmat==0)=4;
[LL, priorset, transmatset, obsmatset] = dhmm_em(setmat, prior1, transmat1, obsmat1, 'max_iter', 500);

laymat = laymatrix(1:200,1:11);
laymat(laymat==0)=4;
[LL, priorlay, transmatlay, obsmatlay] = dhmm_em(laymat, prior1, transmat1, obsmat1, 'max_iter', 500);

placemat = placematrix(1:200,1:7);
placemat(placemat==0)=4;
[LL, priorplace, transmatplace, obsmatplace] = dhmm_em(placemat, prior1, transmat1, obsmat1, 'max_iter', 500);