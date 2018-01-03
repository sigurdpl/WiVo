#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Dec 30 10:54:00 2017

@author: sigurd
"""

def getCountryList():
    return ['italia','frankrike','spania','tyskland','usa','sør-afrika']
def getRegionList():
    italia = ["piemonte", "toscana", "veneto"]
    france = ["bordeaux", "bourgougne", "rhone"]
    spania = ["Catalonia", "Ribera Del Duero", "Rioja"]
    regionList = italia + france + spania
    return regionList

def getProducerList():
    return ["St Pierre", "himkok", "HotDoggers", "Contorni", "Ribaldi", "SchäferFruhlich",
            "MrAmiga", "Casillero Del Diavolo"]

def getGrapeList():
    return ["Cabernet Sauvignon", "Merlot", "Nebbiolo", "Barbera", "Sangiovese", "Pinot Noir",
            "Riesling", "Chardonnay", "Sauvignon Blanc"]