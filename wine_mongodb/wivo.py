#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Dec 28 16:20:08 2017

@author: sigurd
"""

import pymongo
import ssl
from random import randrange
import random
import wineDB

class Wivo:
    def __init__(self):
        self.addr = {'primary' : 'wivo0-shard-00-00-okhyb.mongodb.net:27017'}
        self.client = ''
    def connect(self, username, pwd, primaryServer = True):
        if primaryServer is True:
            base = self.addr['primary']
            
        totAddr = 'mongodb://' + username + ':' + pwd + '@' + base
        print(totAddr)
        self.client = pymongo.MongoClient(totAddr, ssl=True, ssl_cert_reqs=ssl.CERT_NONE)

    def testConnection(self):
        db = self.client.test
        res = db.foo.find()
        for r in res:
            print(r)

    def showWines(self):
        db = self.client.test_wines
        res = db.main.find()
        for wine in res:
            print(wine)
    def addWines(self, descList):
        db = self.client.test_wines
        res = db.main.insert_many(descList)
        
    def addWine(self, desc):
        db = self.client.test_wines
        res = db.main.insert_one(desc)
        for wine in res:
            print(wine)
    def findWine(self, wine):
        db = self.client.test_wines
        res = db.main.find_one

class wivoTest:
    def generateWinesAndUpload(self, numWines):
        wivoConnection = Wivo()
        wivoConnection.connect("sigurdpl","Wine2ThePe0ple")
        wgen = wineGen()
        wineList = wgen.genWines(numWines)
        print("uploading " + str(numWines) + " wines")
        wivoConnection.addWines(wineList)
            
class wineGen:
    def genWines(self, numWines):
        wineList = []
        for i in range(numWines):
            wine = self.genRandomWine(i)
            wineList.append(wine)

        print(wineList)            
        return wineList
    
    def genRandomWine(self, num):
        wine = {}
        wine['navn'] = 'wine' + str(num)
        wine['produsent'] = wineDB.getProducerList()[randrange(len(wineDB.getProducerList()))]
        wine['land'] = wineDB.getCountryList()[randrange(len(wineDB.getCountryList()))]      
        wine['region'] = wineDB.getRegionList()[randrange(len(wineDB.getRegionList()))]   
        wine['type'] = 'red' if num % 2 is 0 else 'white'
        wine['drue'] = wineDB.getGrapeList()[randrange(len(wineDB.getGrapeList()))]
        wine['poeng'] = round(random.random()*10+10,1)
        return wine
        