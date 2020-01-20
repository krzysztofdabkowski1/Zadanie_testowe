import fdb
from random import randint, random
import datetime
import time
import os
import sys

iterations=100

def strTimeProp(start, end, format):
    stime = time.mktime(time.strptime(start, format))
    etime = time.mktime(time.strptime(end, format))
    ptime = stime + random() * (etime - stime)

    return time.strftime(format, time.localtime(ptime))

def randomDate(start, end):
    return strTimeProp(start, end, '%Y/%m/%d')


con = fdb.connect(dsn=os.path.join(sys.path[0])+'/ZADANIE.FDB', user='SYSDBA', password='masterkey')
cur = con.cursor()

# wypełnienie tabeli DOKUMENTY
for row in range(iterations):
	insert=cur.prep("INSERT INTO DOKUMENTY(DATA_KSIEGOWANIA) VALUES(?);")
	cur.execute(insert,[randomDate("2008/1/1", "2020/1/1")])

con.commit()	

# wypełnienie tabeli POZYCJE
insertStatement = cur.prep("insert INTO POZYCJE(ID_POZYCJI,ID_DOKUMENTU,Kwota) VALUES(NULL,?,?)")
cur.execute('select * from DOKUMENTY;')
for row in cur.fetchall():
	print(row[0])
	inputRows = [
	    (row[0], randint(10,100)),
	    (row[0], randint(40,120)),
	    (row[0], randint(60,150))
  	]
	cur.executemany(insertStatement, inputRows)
con.commit()
