#sql
#======
#structure query language
#data
#====

#data is collection of raw facts and figure

"""
id   name   place
01   arun   kochi
02   arun R  tvm
03   rahul   kochi

"""

#processing the data and oragnizing it to make information

#database
#========
#data base is orangized collection of related data
#so it can easily accesible etcc.....

#data base engines
#Mysql,oracle,postgreq ,mongodb

#dbms

#dbms is a software that allows user to create ,reteive,update
# and manage the data in the database
#user---to communicate(sql)---dbms----database

#password:root


# create 
# data add ...insert
#update
# delete


# create database <databasename>;


#int,char,varchar,bool,decimal<datatypes>

#database comapny_db
#=======================
#table employees(
#=============================
# id  (int auto_increment     primnary key)
# f_name(varchar(30))
#lastname(varchar(30))
#age(int-174,0)
#age int check(age >=18) #decision
# email varchar(50) unique #same emailid not allowed
#gender enum("male","female","other")



#constrains
#==============
#auto_increment
#check
#enum
#unique


#create database databasename;
#use database_name;
#create  table tablename(
#             columnname datatype  constraints,
#              column_2 datatype constraints);
#select columname from tablename;
#select * from tablename;
#describe tablename;
#insert into tablename(columnname 1...............,)values(colum1 values............),
#                    #(colunm1.....,)

#where


#update
#for specific cell
#update  tablename set columnname=value where condition;
#update empoloyee set age =26 where id =1;
#delete from tablename where condition;
#filter all record of employee who re aged above 30
#gender
# select * from employes where gender ="male"
# select * from employees where age>30;
#get all data of employees whose firstname is arun ("="))
#get all data of employees having salary 20 k or above (>=)


#AND      OR

#order ,limit
#aggreate function sum(),count(),avg(),min(),max()
#forgein 

#order by

"""
create a db named student db with table acedamics 
table should contain 
id
name
age (int
plac
email
mark (out og hynferd)int)
gender


"""



"""
agrresive function
#===================#
count()
max()
min()
average()
sum()


"""


"""
dept_id    dept_name     hod
1           cse          rahul
2           mech         vinay
3           ai           arun



student_id   student_name     student_age   dept  foregin key

1             amal             20            1
2             sarath           21            1       1
3             arjun            20            2   



"""
"""
a primary key uniely identifies each row within a single database table
forgein key links data betwweeen two table by refwerncing the prinmary key of another table

"""
"""
relationship
#================
one to many
one to one
many to one 
many to one


#join
#============

an SQL JOIN is a clause used to combine rows from two or more
tables based on a related column between them
 
#joins types
# ===========================
left join>>all rows from the  left tables, plus matched rows
              rows from right table
              unmatched right row return NULL


rightjoin>> all row from right tables ,plus matched row form left table

outer join >> all rows and records from both table

inner join>> only rows that have matching values in both side



"""



