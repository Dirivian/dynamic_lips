# Estimating speech from lip dynamics


The capacity of machines to learn and understand this world grows daily. Many of their feats surpass human limits.
Every day, they reveal incredible abilities that were thought impossible before. One such example is the 'visual microphone'
where audio could be retrieved from a video by analyzing minute vibrations of objects in it ranging from a glass 
of water to a bag of chips. We have a much more humble goal of extracting the spoken words from the visuals in a video.

The goal of this project is to develop a limited lip reading algorithm for a subset of the English language. We consider
a scenario in which no audio information is available. The raw video is processed and the position of the lips in each 
frame is extracted. We then prepare the lip data for processing and classify the lips into visemes and phonemes. Hidden 
Markov Models are used to predict the words the speaker is saying based on the sequences of classified phonemes and
 visemes. The GRID audiovisual sentence corpus  database is used for our study.