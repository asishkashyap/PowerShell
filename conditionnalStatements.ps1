# Conditional Statements  - if / elseif / else

#if (#condition) {
#Action
# }
# elseif (<#condition#>) {
#     <# Action when this condition is true #>
# }
# else{
#     Default Action
# }

$chanduram = 105

if ($chanduram -eq 100) {
    Write-Host "number is equal"
}
else {
    Write-Host "Enter valid number"
}


# Color finder 

$fruit = "Guawa"

if ($fruit -eq "Mango") {
    Write-Host " Color is Yellow"
}
elseif ($fruit -eq "Apple") {
    Write-Host " Color is red"
}
elseif ($fruit -eq "Kiwi") {
    Write-Host " Color is Brown"
}
else {
    Write-Host "Fruit name is invalid"
}


#DevOps exmaple
# If condition passes then only action will work
$status = "dsfvdfvd"

if ($status -eq "success") {
    Write-Host "Deployment passed"

}
elseif ($status -eq "failed") {
    Write-Host "Deployment is successful1"
    Write-Host "Deployment is successful2"
    return  # this command used to break the script and continue the flow   
}
else {
    Write-Host "No status found"
}

# Write-Host --> It prints the exact message in logs, also used to debug the code
# Write-Output --> We can use the output of this in other command like pipeline


# Switch --> It is used to define multiple no. conditions 


$fruit = "Guawa"

if ($fruit -eq "Mango") {
    Write-Host " Color is Yellow"
}
elseif ($fruit -eq "Apple") {
    Write-Host " Color is red"
}
elseif ($fruit -eq "Kiwi") {
    Write-Host " Color is Brown"
}
else {
    Write-Host "Fruit name is invalid"
}


$fruit = ""
switch ($fruit) {
    "Mango" { Write-Host " Color is Yellow" }
    "Apple" { Write-Host " Color is Red" }
    "Guawa" { Write-Host " Color is Green" }
    "Kiwi" { Write-Host " Color is Brown" }
    Default { Write-Host "Fruit name is invalid" }
}


switch ($number) {
    { $_ -eq 18 } { Write-Host " Person is adult" }
    { $_ -lt 18 } { Write-Host " Person is Teenager" }
    Default { Write-Host "No age provided" }
}

$numbers = @(12, 19, 20, 30, 80)
foreach ($i in $numbers) {
    if ($i -gt 18) {
        Write-Output " Person is adult: Age is $i" | Add-Content -Path ""
    }
    elseif ($i -eq 80){
          Write-Host "Person is an Senior Citizen"
    }
    else {
        Write-Host "Person is Teenager, Age is $i"
    }
}

$numbers = @(12, 19, 20, 30, 80)
foreach ($i in $numbers) {
    switch ($number) {
    { $_ -eq 18 } { Write-Host " Person is adult" }
    { $_ -lt 18 } { Write-Host " Person is Teenager" }
    Default { Write-Host "No age provided" }
}
}