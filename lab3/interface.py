import sys
from queries import *

COMMAND_COUNT = 12
running = True

cursor = connect()
if cursor is None:
	print("Error: Unable to connect to the database")
	sys.exit()

while running:
	print("\n=======================IMDB COMMAND MENU================================")
	print("| 1. What is the maximum number of seasons that a Series has?            |")
	print("| 2. Which series had the most seasons?                                  |")
	print("| 3. Total number of movies made in 2005?                                |")
	print("| 4. How many movies are sci-fi movies?                                  |")
	print("| 5. How many movies were made in Germany?                               |")
	print("| 6. What are the last names of all actors whose first names are Elias?  |")
	print("| 7. How many casts has Jennifer Aniston been a part of?                 |")
	print("| 8. How many characters in movies are named Rick?                       |")
	print("| 9. What is the count of the 10 most common last names of Actors?       |")
	print("| 10. In descending order, which years had the most new movies?          |")
	print("| 11. EXIT                                                               |")
	print("========================================================================\n")
	choice = input("Select a Option: ")

	try:
		choice = int(choice)
		if choice > COMMAND_COUNT:
			raise ValueError  
	except ValueError as err:
		print('Not a Valid Command.')
		continue
	
	if choice == 1:
		example_one(cursor)
	elif choice == 2:
		example_two(cursor)
	elif choice == 3:
		example_three(cursor)
	elif choice == 4:
		example_four(cursor)
	elif choice == 5:
		example_five(cursor)
	elif choice == 6:
		example_six(cursor)
	elif choice == 7:
		example_seven(cursor)
	elif choice == 8:
		example_eight(cursor)
	elif choice == 9:
		example_nine(cursor)
	elif choice == 10:
		example_ten(cursor)
	elif choice == 11:
		print('Exiting Command Menu...')
		running = False