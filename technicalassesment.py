import mysql.connector
import pandas as pd

mydb = mysql.connector.connect(host="localhost", user="root", password="pandey123", database="multi_specialty_hospital")

mycursor = mydb.cursor()

mycursor.execute("select * from patients")

string = ""

for i in mycursor:
    for list in i:
        string+=str(list) + "|"
    string+="\n"
    
try:
    f= open("patients.txt","w")
    f.write(string)
    f.close()
except e:
    print(e)

mycursor.execute("show tables")
t = []
for i in mycursor:
    res = str(i)[2:-3]

with open("patients.txt",'r') as f:
    listl=[]
    for line in f:
        strip_lines=line.strip()
        listli=strip_lines.split("|")
        listli.pop()
        if(listli[7].lower() in t):
            print(listli[7])
            print(t)
            print("ok")
            mycursor.execute("INSERT INTO " + listli[7] + " VALUES %r;" % (tuple(listli),))
        else:
            t.append(listli[7].lower())
            print(listli[7])
            print(t)
            print("no")
            mycursor.execute("create table " + listli[7] + " like patients")
            mycursor.execute("INSERT INTO " + listli[7] + " VALUES %r;" % (tuple(listli),))
