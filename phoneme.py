# -*- coding: utf-8 -*-
"""
Created on Sun Mar  5 17:14:51 2017

@author: user
"""

import nltk

arpabet = nltk.corpus.cmudict.dict()
k =[j for j in 'abcdefghijklmnopqrstuvwxyz']
t= ['again', 'soon', 'now', 'please','bin', 'lay', 'place','set', 'blue', 'green','red','white' ,'at','by', 'with', 'in', 'zero','one', 'two','three','four','five','six','seven','eight','nine'];
g = k+t
ph =[]
for word in g:
        w =arpabet[word][0]
        ph = ph +w
uniqueph = set(ph)