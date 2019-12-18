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

> This is for the Vacation table.

~~~mysql
    CREATE TABLE vacation(
        VID INT(11) NOT NULL AUTO_INCREMENT,
        transportation INT NOT NULL,
        accommodation INT NOT NULL,
        food INT NOT NULL,
        days INT(3) NOT NULL,
        PRIMARY KEY(VID)
    );
~~~

> This is for the Maintenance table.

~~~mysql
    CREATE TABLE maintenance(
        MaID INT(11) NOT NULL AUTO_INCREMENT,
        IID INT(11) NOT NULL,
        inspection INT NOT NULL,
        road_tax INT NOT NULL,
        maintenance_cost INT NOT NULL,
        save_pr_year INT NOT NULL,
        PRIMARY KEY(MaID),
        FOREIGN KEY(IID) REFERENCES insurance(IID)
    );
~~~

> This is for the Transport table.

~~~mysql
    CREATE TABLE transport(
        TID INT(11) NOT NULL AUTO_INCREMENT,
        MaID INT(11),
        method VARCHAR(200) NOT NULL,
        km INT NOT NULL,
        fule_price INT NOT NULL,
        bus_price INT NOT NULL,
        liters_pr_kilometre INT NOT NULL,
        PRIMARY KEY(TID),
        FOREIGN KEY(MaID) REFERENCES maintenance(MaID)
    );
~~~

> This is for the HouseHold table.

~~~mysql
    CREATE TABLE household(
        HID INT(11) NOT NULL AUTO_INCREMENT,
        RID INT(11),
        TID INT(11),
        MeID INT(11),
        SID INT(11),
        GrID INT(11),
        GiID INT(11),
        VID INT(11),
        IID INT(11),
        PRIMARY KEY(HID),
        FOREIGN KEY(RID) REFERENCES rent(RID),
        FOREIGN KEY(TID) REFERENCES transport(TID),
        FOREIGN KEY(MeID) REFERENCES media(MeID),
        FOREIGN KEY(SID) REFERENCES subscriptions(SID),
        FOREIGN KEY(GrID) REFERENCES grocerys(GrID),
        FOREIGN KEY(GiID) REFERENCES gifts(GiID),
        FOREIGN KEY(VID) REFERENCES vacation(VID),
        FOREIGN KEY(IID) REFERENCES insurance(IID)
    );
~~~
