# Feel free to define your own helper methods.
import psycopg2
from config import db

def connect():
    try:
        conn = psycopg2.connect(
            "dbname='" + db['DATABASE'] + "'" + 
            "user='" + db['USER'] + "'" + 
            "host='" + db['HOST'] + "'" + 
            "password='" + db['PASSWORD'] + "'"
            )
        cursor = conn.cursor()
        return cursor
    except:
        return None

def print_table(table):
    print("\n====RESULT TABLE====")

    cols = len(table[0])
    format_string = "%s " * cols
    for row in table:
        print (format_string % tuple(row))
    print("====================\n")


def run_query(query, cursor):
    cursor.execute(query)
    rows = cursor.fetchall()
    colnames = [desc[0] for desc in cursor.description]
    rows.insert(0, colnames)
    return rows

def example_one(cursor):
    query = "SELECT count(*) from actors"
    result = run_query(query, cursor)
    print_table(result)

def example_two(cursor):
    year = input('Choose a year: ')
    query = "SELECT count(*) from movies where year = " + year + ";"
    result = run_query(query, cursor)
    print_table(result)

def example_three(cursor):
    title = input('Choose a movie: ')

    query = "SELECT idmovies, title, year from movies where title = '" + title + "' and type = 'FF' ORDER BY year ASC;"
    movie_id_table = run_query(query, cursor)

    if len(movie_id_table) > 2:
        print_table(movie_id_table)
        movie_id = input('Pick a movie id: ')

        query = "SELECT character, fname, lname, genders FROM casts INNER JOIN actors on casts.idactors = actors.idactors where idmovies = " + movie_id + ";"
        result = run_query(query, cursor)

        print_table(result)
    else:
        print('No movie correspondes to the title: ' + title)

def query_one(cursor):
    query = "SELECT MAX(season) FROM Series;"
    result = run_query(query, cursor)
    print_table(result)
    
def query_two(cursor):
    season = input('Choose number of seasons: ')
    query = "SELECT name FROM Series WHERE season = " + season + " ORDER BY name;"
    result = run_query(query, cursor)
    print_table(result)

def query_three(cursor):
    year = input('Choose a year: ')
    query = "SELECT COUNT(idmovies) FROM Movies WHERE year = " + year + ";"
    result = run_query(query, cursor)
    print_table(result)
    
def query_four(cursor):
    query = "SELECT COUNT(Movies_Genres.idmovies) FROM Movies_Genres INNER JOIN Movies ON (Movies_Genres.idmovies = Movies.idmovies) WHERE Movies_Genres.idgenres = 15;"
    result = run_query(query, cursor)
    print_table(result)

def query_five(cursor):
    query = "SELECT title FROM Aka_Titles GROUP BY idaka_titles HAVING location = 'Germany';"
    result = run_query(query, cursor)
    print_table(result)
    
def query_six(cursor):
    fname = input('Please enter a first name: ')
    query = "SELECT lname FROM Actors GROUP BY idactors HAVING fname = '" + fname + "';"
    result = run_query(query, cursor)
    print_table(result)

def query_seven(cursor):
    fname = input('Please enter an actors first name: ')
    lname = input('Please enter an actors last name: ')
    query = "SELECT COUNT(Cast_.idcast) FROM Cast_ INNER JOIN Actors ON (Cast_.idactors = Actors.idactors) WHERE Actors.fname = '" + fname + "' AND Actors.lname = '" + lname + "';"
    result = run_query(query, cursor)
    print_table(result)
    
def query_eight(cursor):
    name = input('Please enter a character name: ')
    query = "SELECT COUNT(Cast_.idmovies) FROM Cast_ INNER JOIN Movies_Genres ON (Cast_.idmovies = Movies_Genres.idmovies) WHERE Cast_.character = '" + name + "';"
    result = run_query(query, cursor)
    print_table(result)
    
def query_nine(cursor):
    query = "SELECT COUNT(Actors.lname) FROM Actors LEFT OUTER JOIN Cast_ ON (Actors.idactors = Cast_.idactors) GROUP BY Actors.lname ORDER BY COUNT(Actors.lname) DESC LIMIT 10;"
    result = run_query(query, cursor)
    print_table(result)

def query_ten(cursor):
    query = "SELECT Movies.year,COUNT(Movies.idmovies) FROM Movies INNER JOIN Movies_Genres ON (Movies.idmovies = Movies_Genres.idmovies) GROUP BY Movies.year ORDER BY COUNT(Movies.year) DESC LIMIT 10;"
    result = run_query(query, cursor)
    print_table(result)
