import random

count = int(input("Count: "))
sides = int(input("Sides: "))

n = 0

for i in range(count):
    rand = random.randint(1, sides - 1)
    print(rand)
    n += rand

print("Sum: " + str(n))