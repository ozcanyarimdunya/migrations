# Sample Project for Data Migration Engineers

```
@author : Ozcan Yarimdunya
@date   : 2019-07-09 22:54:54
@website: http://semiworld.org
```

## How to

- **run.sql**: The main,one and only complete script file need to be run for database migrations
- **import.sql**: The initial script file to create database and its tables with data
- **modules/**: This one is for clear understanding the main `run.sql` script file. 
- **README.md**: Current file
- **TASK.md**: Markdown version of given task
- **ROADMAP.md**: What step has been done or what have been done when doing this task
- **docker-compose.yml**: If you have docker installed on your system you can run `docker-compose up -d --build` and with this you will have a ready-to-use postgres database with initial script installed.
- **Sample Project.pdf**: Pdf version of given task
- **README.pdf**: Pdf version of description file

## Installation 

Run `import.sql` file to initialise database

## Road map

Check [ROADMAP.md](/ROADMAP.md) file to see what step i followed.

## Task

Check [TASK.md](/TASK.md) file to see what task it is.

## Result

Check `run.sql`, this file contains all necessary queries for given task.

## Note

- `modules/` directory contains each part of script. `run.sql` includes `_functions.sql`, `_initials.sql`, `_migrations.sql` respectively. 
- When `MIGRATE Account TABLE FROM MEMBERDATA TABLE`, i was not able to find `_accountNumber`, so i set it as `123`.(`run.sql:140`)
- When `MIGRATE Member TABLE FROM memberdata TABLE`, i was not able to find `SIN`, so i set it as `123`. (`run.sql:104`)
