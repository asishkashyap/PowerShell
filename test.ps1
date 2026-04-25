#Arithmatic operator - +, -, *, /, %

$a = 7
$b = 3

$c = $a % $b

$c

#Comparison operator -eq, -ne, -gt, -lt, -ge, -le

# -eq = Equal to
# -ne = Not equal to
# -gt = Greater than
# -lt = Less than
# -ge = Greater than or equal to
# -le = Less than or equal to

$a = 10
$b = 10

$a -ne $b 

#Array

$a = 1,2,3,4,5

# Looping through array
foreach ($x in $a) {
    $x*2   # 
} 
