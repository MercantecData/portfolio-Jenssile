# This is where all the code for the Database will be

this is where you can find the code that i have used to create the database and tables.

## Setup of databases code

~~~~mysql
    CREATE DATABASE accounting;
~~~~

## Setup of table code

> This is for the Rent table.

~~~~mysql
    CREATE TABLE rent(
        RID int(11) NOT NULL AUTO_INCREMENT,
        monthly_rent int,
        yearly_rent int,
        water int,
        heating int,
        electricity int,
        PRIMARY KEY(RID)
    );
~~~~

> This is for the Insurance table.

~~~~mysql
    CREATE TABLE insurance(
        IID int(11) NOT NULL AUTO_INCREMENT,
        name varchar(200) NOT NULL,
        price_monthly int NOT NULL,
        price_yearly int NOT NULL,
        PRIMARY KEY(IID)
    );
~~~~

> This is for the Media table.

~~~~mysql
    CREATE TABLE media(
        MeID INT(11) NOT NULL AUTO_INCREMENT,
        NAME VARCHAR(200) NOT NULL,
        price_monthly INT NOT NULL,
        price_yearly INT NOT NULL,
        PRIMARY KEY(MeID)
    );
~~~~

> This is for the Subscriptions table.

~~~mysql
    CREATE TABLE subscriptions(
        SID INT(11) NOT NULL AUTO_INCREMENT,
        NAME VARCHAR(200) NOT NULL,
        price_monthly INT NOT NULL,
        price_yearly INT NOT NULL,
        PRIMARY KEY(SID)
    );
~~~

> This is for the Grocerys table.

~~~mysql
    CREATE TABLE grocerys(
        GrID INT(11) NOT NULL AUTO_INCREMENT,
        buget INT NOT NULL,
        money_spent INT NOT NULL,
        PRIMARY KEY(GrID)
    );
~~~

> This is for the Gifts table.

~~~mysql
    CREATE TABLE gifts(
        GiID INT(11) NOT NULL AUTO_INCREMENT,
        price_buget INT NOT NULL,
        number_people INT NOT NULL,
        money_spent INT NOT NULL,
        PRIMARY KEY(GiID)
    );
~~~
