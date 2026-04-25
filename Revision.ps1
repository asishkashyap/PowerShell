# camelCase = First letter will always be small letter
$myVariable = "Hello World"              # repition of variable ensure its usability
$myVariable
# PascalCase = First letter will always be capital letter
$MyVariable = "Hello World"   # Write your own draft code ----use the AI to refine this or 
                              #Do formatting or last do error handling

                              # Do not use AI for complete writting
                              # Use this prompt - please explain this code and what this will do

#snake_case = words are separated by underscores


$myVariable = "Hello World"

$myVariable.GetType()

#Arithmatic operator - +, -, *, /, %

$x = 10
$y = 5

10 + 5
10 - 5
$x - $y
10 * 5

$x = 10
$y = 5
$x * $y

# Step by step development of code, always do testing of script on local first - terraform, powershell, python..

#Comparison operator -eq, -ne, -gt, -lt, -ge, -le
$x = 10
$y = 5

#$x -eq $y
$x -gt $y
2 -eq 4

# Array

$numbers = 1,2,3,4,5,6,7,8,9,10
      #     0 1 2 3 4 5 6 7 8 9
$numbers[0]   # Accessing first element of array
# $numbers[4]   # Accessing 5th element of array
# $numbers
# $numbers.Count  # Total number of elements in array

# Looping through array

foreach ($multipliers in $numbers[0..4]) {
    $multipliers
}

$numbers # Print all elements of array


$subscription = Get-AzSubscription  # from portal
Get-Content 
$subscription 