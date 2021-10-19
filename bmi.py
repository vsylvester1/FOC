height = float(input("Enter height in meters: "))
weight = float(input("Enter weight in kg: "))

bmi = weight/(height**2) 

print("Your BMI is: {0} and you are: ".format(bmi), end='')

if ( bmi < 18.5):
   print("underweight")
elif ( bmi >= 18.5 and bmi < 25):
   print("Healthy")
elif ( bmi >= 25 and bmi < 30):
   print("overweight")
