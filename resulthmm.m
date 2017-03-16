
clear resultg31 resultg32 resultg4 resultbl21 resultbl22 resultbl4 resultr3 resultr2 resultb21 resultb22 resultb3 resultb41 resultb42 resultb51 resultb52 resultfour2 resultfour3 resultfour5 resultfive2 resultfive41 resultfive42 resultfive5;
resg31 =0;
resg32 =0;
resg4 =0;
resbl21 =0;
resbl22 =0;
resbl4 =0;
resr3 =0;
resr2 =0;
resb21 =0;
resb22=0;
resb3 =0;
resb41 =0;
resb42 =0;
resb51 =0;
resb52 =0;
resfour2 =0;
resfour3 =0;
resfour5 =0;
resfive2 =0;
resfive41 =0;
resfive42 =0;
resfive5 =0;
dimend =225;
for i = 201:225
    
k = greenmatrix(i,1:6);
k(k==0)=4;
loglikbin = dhmm_logprob(k, priorbin, transmatbin, obsmatbin);
loglikblue = dhmm_logprob(k, priorblue, transmatblue, obsmatblue);
loglikgreen = dhmm_logprob(k, priorgreen, transmatgreen, obsmatgreen);
loglikred = dhmm_logprob(k, priorred, transmatred, obsmatred);
loglikwhite = dhmm_logprob(k, priorwhite, transmatwhite, obsmatwhite);
loglikeight = dhmm_logprob(k, prioreight , transmateight , obsmateight );
loglikfour = dhmm_logprob(k, priorfour  , transmatfour  , obsmatfour  );
loglikfive = dhmm_logprob(k, priorfive  , transmatfive  , obsmatfive );
lllkg31 = [ loglikwhite ; loglikgreen;  loglikfive  ];
lllkg32 = [ loglikwhite ; loglikgreen;  loglikblue  ];
lllkg4 = [ loglikwhite ; loglikgreen;  loglikfive ; loglikred  ];
if loglikgreen ==max(lllkg31)
    resultg31(i-200)=1;
    resg31 = resg31+1;
else
resultg31(i-200)=0;
end
if loglikgreen ==max(lllkg32)
    resultg32(i-200)=1;
    resg32 = resg32+1;
else
resultg32(i-200)=0;
end
if loglikgreen ==max(lllkg4)
    resultg4(i-200)=1;
    resg4 = resg4+1;
else
resultg4(i-200)=0;
end

k = bluematrix(i,1:7);
k(k==0)=4;
loglikbin = dhmm_logprob(k, priorbin, transmatbin, obsmatbin);
loglikblue = dhmm_logprob(k, priorblue, transmatblue, obsmatblue);
loglikgreen = dhmm_logprob(k, priorgreen, transmatgreen, obsmatgreen);
loglikred = dhmm_logprob(k, priorred, transmatred, obsmatred);
loglikwhite = dhmm_logprob(k, priorwhite, transmatwhite, obsmatwhite);
loglikeight = dhmm_logprob(k, prioreight , transmateight , obsmateight );
loglikfour = dhmm_logprob(k, priorfour  , transmatfour  , obsmatfour  );
loglikfive = dhmm_logprob(k, priorfive  , transmatfive  , obsmatfive );
lllkbl21 = [ loglikbin ; loglikblue;   ];
lllkbl22 = [ loglikred ; loglikblue;   ];
lllkbl4 = [ loglikwhite ; loglikred;loglikbin ; loglikblue;  ];

if loglikblue ==max(lllkbl21)
    resultbl21(i-200)=1;
    resbl21 = resbl21+1;
else
resultbl21(i-200)=0;
end
if loglikblue ==max(lllkbl22)
    resultbl22(i-200)=1;
    resbl22 = resbl22+1;
else
resultbl22(i-200)=0;
end
if loglikblue ==max(lllkbl4)
    resultbl4(i-200)=1;
    resbl4 = resbl4+1;
else
resultbl4(i-200)=0;
end

k = redmatrix(i,1:6);
k(k==0)=4;
loglikbin = dhmm_logprob(k, priorbin, transmatbin, obsmatbin);
loglikblue = dhmm_logprob(k, priorblue, transmatblue, obsmatblue);
loglikgreen = dhmm_logprob(k, priorgreen, transmatgreen, obsmatgreen);
loglikred = dhmm_logprob(k, priorred, transmatred, obsmatred);
loglikwhite = dhmm_logprob(k, priorwhite, transmatwhite, obsmatwhite);
loglikeight = dhmm_logprob(k, prioreight , transmateight , obsmateight );
loglikfour = dhmm_logprob(k, priorfour  , transmatfour  , obsmatfour  );
loglikfive = dhmm_logprob(k, priorfive  , transmatfive  , obsmatfive );
lllkr2 = [ loglikred ; loglikeight;   ];
lllkr3 = [ loglikwhite ; loglikgreen;  loglikred  ];
if loglikred==max(lllkr2)
    resultr2(i-200)=1;
    resr2 = resr2+1;
else
resultr2(i-200)=0;
end
if loglikred==max(lllkr3)
    resultr3(i-200)=1;
    resr3 = resr3+1;
else
resultr3(i-200)=0;
end
end

for i = 201:216
    
k = binmatrix(i,1:6);
k(k==0)=4;
loglikbin = dhmm_logprob(k, priorbin, transmatbin, obsmatbin);
loglikblue = dhmm_logprob(k, priorblue, transmatblue, obsmatblue);
loglikgreen = dhmm_logprob(k, priorgreen, transmatgreen, obsmatgreen);
loglikred = dhmm_logprob(k, priorred, transmatred, obsmatred);
loglikwhite = dhmm_logprob(k, priorwhite, transmatwhite, obsmatwhite);
loglikeight = dhmm_logprob(k, prioreight , transmateight , obsmateight );
loglikfour = dhmm_logprob(k, priorfour  , transmatfour  , obsmatfour  );
loglikfive = dhmm_logprob(k, priorfive  , transmatfive  , obsmatfive );
lllkb21 = [ loglikbin ; loglikblue;  ];
lllkb22 = [ loglikbin ; loglikwhite;  ];
lllkb3 = [ loglikbin ; loglikblue; loglikgreen;  ];
lllkb41 = [ loglikbin ; loglikgreen;  loglikblue ; loglikred  ];
lllkb42 = [ loglikbin ; loglikwhite;  loglikblue ; loglikred  ];
lllkb51 = [ loglikbin ; loglikgreen;  loglikblue ; loglikred ; loglikeight ];
lllkb52 = [ loglikbin ; loglikgreen;  loglikblue ; loglikred ; loglikeight ];
if loglikbin ==max(lllkb21)
    resultb21(i-200)=1;
    resb21 = resb21+1;
else
resultb21(i-200)=0;
end
if loglikbin ==max(lllkb22)
    resultb22(i-200)=1;
    resb22 = resb22+1;
else
resultb22(i-200)=0;
end
if loglikbin ==max(lllkb3)
    resultb3(i-200)=1;
    resb3 = resb3+1;
else
resultb3(i-200)=0;
end
if loglikbin ==max(lllkb41)
    resultb41(i-200)=1;
    resb41 = resb41+1;
else
resultb41(i-200)=0;
end
if loglikbin ==max(lllkb42)
    resultb42(i-200)=1;
    resb42 = resb42+1;
else
resultb42(i-200)=0;
end
if loglikbin ==max(lllkb51)
    resultb51(i-200)=1;
    resb51 = resb51+1;
else
resultb51(i-200)=0;
end
if loglikbin ==max(lllkb52)
    resultb52(i-200)=1;
    resb52 = resb52+1;
else
resultb52(i-200)=0;
end
end

for i = 81:100
    
k = fourmatrix(i,1:7);
k(k==0)=4;
loglikbin = dhmm_logprob(k, priorbin, transmatbin, obsmatbin);
loglikblue = dhmm_logprob(k, priorblue, transmatblue, obsmatblue);
loglikgreen = dhmm_logprob(k, priorgreen, transmatgreen, obsmatgreen);
loglikred = dhmm_logprob(k, priorred, transmatred, obsmatred);
loglikwhite = dhmm_logprob(k, priorwhite, transmatwhite, obsmatwhite);
loglikeight = dhmm_logprob(k, prioreight , transmateight , obsmateight );
loglikfour = dhmm_logprob(k, priorfour  , transmatfour  , obsmatfour  );
loglikfive = dhmm_logprob(k, priorfive  , transmatfive  , obsmatfive );
lllkfour2 = [ loglikfour ; loglikwhite;  ];
lllkfour3 = [ loglikbin ; loglikfour; loglikgreen;  ];
lllkfour5 = [loglikfive;  loglikfour; loglikgreen; loglikred;   loglikwhite;  ];
if loglikfour ==max(lllkfour2)
    resultfour2(i-80)=1;
    resbfour2 = resfour2+1;
else
resultfour2(i-80)=0;
end
if loglikfour ==max(lllkfour3)
    resultfour3(i-80)=1;
    resbfour3 = resfour3+1;
else
resultfour3(i-80)=0;
end
if loglikfour ==max(lllkfour5)
    resultfour5(i-80)=1;
    resfour5 = resfour5+1;
else
resultfour5(i-80)=0;
end


k = fivematrix(i,1:8);
k(k==0)=4;
loglikbin = dhmm_logprob(k, priorbin, transmatbin, obsmatbin);
loglikblue = dhmm_logprob(k, priorblue, transmatblue, obsmatblue);
loglikgreen = dhmm_logprob(k, priorgreen, transmatgreen, obsmatgreen);
loglikred = dhmm_logprob(k, priorred, transmatred, obsmatred);
loglikwhite = dhmm_logprob(k, priorwhite, transmatwhite, obsmatwhite);
loglikeight = dhmm_logprob(k, prioreight , transmateight , obsmateight );
loglikfour = dhmm_logprob(k, priorfour  , transmatfour  , obsmatfour  );
loglikfive = dhmm_logprob(k, priorfive  , transmatfive  , obsmatfive );
lllkfive2 = [ loglikfour ; loglikwhite;  ];
lllkfive41 = [ loglikblue ; loglikfour; loglikfive; loglikwhite;  ];
lllkfive42 =  [ loglikred ; loglikfour; loglikfive; loglikwhite;  ];
lllkfive5 = [loglikfive;  loglikfour; loglikgreen; loglikred;   loglikwhite;  ];
if loglikfive ==max(lllkfive2)
    resultfive2(i-80)=1;
    resbfive2 = resfive2+1;
else
resultfive2(i-80)=0;
end
if loglikfive ==max(lllkfive41)
    resultfive41(i-80)=1;
    resbfive41 = resfive41+1;
else
resultfive41(i-80)=0;
end
if loglikfive ==max(lllkfive42)
    resultfive42(i-80)=1;
    resbfive42 = resfive42+1;
else
resultfive42(i-80)=0;
end
if loglikfour ==max(lllkfive5)
    resultfive5(i-80)=1;
    resfive5 = resfive5+1;
else
resultfive5(i-80)=0;
end
end