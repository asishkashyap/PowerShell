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
}else {
    Write-Host "dsfgr"
}


# Color finder 

$fruit = "Guawa"

if ($fruit -eq "Mango") {
    Write-Host " Color is Yellow"
}elseif($fruit -eq "Apple") {
     Write-Host " Color is red"
}elseif($fruit -eq "Kiwi") {
     Write-Host " Color is Brown"
}else{
    Write-Host "Fruit name is invalid"
}


#DevOps exmaple

$status = "failed"

if ($status -ne "success") {
    Write-Host "Deployment failed"
    throw "status is not success, refer the pipeline logs"  # throw is used to end the script and print the custom error message
}
else{
    Write-Host "Deployment is successful"
}