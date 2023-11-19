import psycopg2
from psycopg2 import Error, sql

DATABASE = "demo"
USER = "postgres"
PASSWORD = "Afizer@69"
LOCALHOST = "127.0.0.1"
PORT = "5432"

SET_PATH = '''SET search_path = bookings;'''

READ_VIEW = '''
select * from view_name
'''

try:
    connection = psycopg2.connect(dbname=DATABASE, user=USER, password=PASSWORD, host=LOCALHOST, port=PORT)
    curs = connection.cursor()

    curs.execute(SET_PATH)
    curs.execute(READ_VIEW)

    record = curs.fetchall() # для одной записи fetchone()

    print(f"Текущая запись {record}") # что выгрузилось

except(Exception, Error) as error:
    print("Возникло исключение при работе с Postgres", error)
