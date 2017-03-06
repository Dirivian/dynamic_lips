# -*- coding: utf-8 -*-
"""
Created on Sun Mar  5 17:14:51 2017

@author: user
"""

import nltk

arpabet = nltk.corpus.cmudict.dict()

for word in ('f', 'see', 'sea', 'compute', 'comput', 'cat'):
    try:
        print(arpabet[word][0])
    except Exception as e:
        print(e)