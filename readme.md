Preparing data and database server :

For the base implementation, extension 1 and extension 2
Download the preprocessed adult.csv file from https://drive.google.com/drive/u/0/folders/1jxplkqSXk10PAQpjjXlx_O94s14PgUFh 
Now, create a database cs645-project in pgadmin4.
Within this database, create a table ‘Adult’ using the file createadult.sql. Before that, update the path to the csv file within this.
Update the connection details (‘user’, ‘password, ‘host’,’port’) within the .ipynb file.
For extension 3
Download our preprocessed dblp dataset from https://drive.google.com/drive/u/0/folders/1jxplkqSXk10PAQpjjXlx_O94s14PgUFh 
In the created database (cs645-project) run the table creation script (‘createtables.sql’). Before that, update the path to the csv files within this.
Update the connection details (‘user’, ‘password, ‘host’,’port’) within the .ipynb file.


Installing python packages:

!pip install psycopg2
!pip install scipy
!pip install sklearn
!pip install sqlalchemy 
!pip install seaborn
!pip install matplotlib


These package installation commands are provided in the first cell of .ipynb file

Running the .ipynb file:

One can run this file using a Jupyter notebook on their local machine.
Restart kernel and run all cells.

