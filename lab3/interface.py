import sys
from queries import *

COMMAND_COUNT = 11
running = True

cursor = connect()
if cursor is None:
	print("Error: Unable to connect to the database")
	sys.exit()

while running:
	print("\n=======================IMDB COMMAND MENU=================================")
	print("| 1. Who are the actors in a given movie?				 |")
	print("| 2. How many series had a given number of seasons?                       |")
	print("| 3. How many movies were made in a given year?                           |")
	print("| 4. How many movies are sci-fi movies?                                   |")
	print("| 5. Which movies were made in Germany?                                   |")
	print("| 6. What are the last names of actors with a given first names?          |")
	print("| 7. How many casts is a given actor a part of?                           |")
	print("| 8. How many times does a given character name appear across all movies? |")
	print("| 9. What is the count of the 10 most common last names of Actors?        |")
	print("| 10. In descending order, which years had the most new movies?           |")
	print("| 11. EXIT                                                                |")
	print("=========================================================================\n")
	choice = input("Select a Option: ")

	try:
		choice = int(choice)
		if choice > COMMAND_COUNT:
			raise ValueError  
	except ValueError as err:
		print('Not a Valid Command.')
		continue
	
	if choice == 1:
		query_one(cursor)
	elif choice == 2:
		query_two(cursor)
	elif choice == 3:
		query_three(cursor)
	elif choice == 4:
		query_four(cursor)
	elif choice == 5:
		query_five(cursor)
	elif choice == 6:
		query_six(cursor)
	elif choice == 7:
		query_seven(cursor)
	elif choice == 8:
		query_eight(cursor)
	elif choice == 9:
		query_nine(cursor)
	elif choice == 10:
		query_ten(cursor)
	elif choice == 11:
		print('Exiting Command Menu...')
		running = False
