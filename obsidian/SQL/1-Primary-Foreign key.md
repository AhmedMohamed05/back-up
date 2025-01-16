**Primary Key:** It is a one column or more that is uniquely identifies a row or record
	Primary key should be constant
	Each Table must have a primary key
**Foreign Key:** The key that link the primary key, it refer's to the primary key in another table
Ex:


| ID  | Name**  | AgeID |
| :-- | :------ | ----- |
| 1   | Ahmed   | 2     |
| 2   | Ali     | 2     |
| 3   | Mustafa | 3     |

| ID  | Age |
| --- | --- |
| 1   | 18  |
| 2   | 19  |
| 3   | 22  |
Here are the IDs filed are primary keys and the *AgeID* is a foreign key

**Note(Referential Integrity):** When you add a foreign key that is not exist in another table as a primary key, The RDBMS will automatically search the tables and if not found will give an error AKA as *Data Integrity Problem* 