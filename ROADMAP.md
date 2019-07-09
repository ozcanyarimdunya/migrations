# ROAD MAP

Create an SQL script file that transforms the data in the *temporary database tables* and inserts it into the *real database tables* correctly. Also include the statement(s) to create the plan.

## Real database table

- **User**
- **Plan**
- **Country**
- **Province**
- **Member**
- **Account**
- **Contribution**

## Temporary database table

- **contributions**
- **earnings**
- **memberdata**
- **service**



## Notes

- Each **Member **has an account
- **Plan** table is most important table in database.



## Definition

- **User**:
  - *SYSTEM* user will be used
  - requires `createdBy(User)`, `updatedBy(User)` which will be itself, no need to worry about it.
- **Plan**:
  - requires `createdBy(User)`, `updatedBy(User)`.
- **Country**:
  - requires `createdBy(User)`, `updatedBy(User)`.
- **Province**:
  - required `createdBy(User)`, `updatedBy(User)`, `country_id(Country)`.
- **Member**:
  - requires `plan_id(Plan)`, `createdBy(User)`, `updatedBy(User)`,  `country_id(Country)`, `province_id(Province)`.
  - data comes from **memberdata** temporary database table (careful on date conversion).
  - ignore `status` and `spouses` related columns.
- **Account**:
  - requires `plan_id(Plan)`, `createdBy(User)`, `updatedBy(User)`, `member_id(Member)`, `employerProvince_id(Province)`.
  - data comes from **memberdata** temporary database table.
- **Contribution**:
  - requires `plan_id(Plan)`, `createdBy(User)`, `updatedBy(User)`, `account_id(Account)`,.
  - data comes from **contributions** temporary database table.
  - ignore `cwi` columns.
- **Earning**:
  - requires `plan_id(Plan)`, `createdBy(User)`, `updatedBy(User)`, `account_id(Account)`,.
  - data comes from **earnings** and **service** temporary database tables.



## Scenario

- user named **SYSTEM** will be created (Already created).
- a date converter function that convert excel date to postgresql date will be created. 
- insert **memberdata** into **Member** table.