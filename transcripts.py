# -*- coding: utf-8 -*-
"""
Created on Tue Mar  7 20:58:20 2017

@author: user
"""
import csv
import os
os.chdir("C:\Users\user\Downloads\align")
beach = os.listdir()
eve =[]
for sand in beach:
    text_file = open(sand, "r")
    lines = text_file.read().split(',')
    k = lines[0]
    g = k.split()
    eve = [ eve, g]
with open("align.csv", "w") as f:
    writer = csv.writer(f)
    writer.writerows(eve)