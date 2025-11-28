#Hash Table Example - It is dictionary which consist of multiple key value pairs#
# Hash table doesn't visible in pipeline logs, so we need to use special syntax to create hash table #
#system.Collection.hashtable

$DevopsEngineer = @{
    "Rajan"      = "DevOps Engineer"
    "Role"       = "Automation of Infra"
    "Experience" = "5 Years"
    "Package"    = "25 LPA"            
}
# $DevopsEngineer["rajan"]
$DevopsEngineer.ContainsKey("roles")
foreach ($names in $DevopsEngineer) {
    $names["Rajan"], $names["Role"]
}



$DevopsEngineer["Experience", "Package"]   # Not a good practice to access multiple values like this
$DevopsEngineer.GetType()


# Custom Object
# It is custom object which consist of multiple properties - info about single entity

$toDo = [PSCustomObject]@{
    AppName = "ToDo Application"
    Version = "1.0.0"
    Owner   = "DevOps Insiders Team"
    Size    = 100
}


$toDo.AppName
$toDo.GetType()

$toDo.Owner   # Dot shows that we are expecting data from inside of 

# List of PS custom objects --> It consists multiple properties of multiple entities

$apps = @(
    [PSCustomObject]@{AppName = "ToDo Application"; Version = "1.0.0"; Owner = "John"; Size = 100 }
    [PSCustomObject]@{AppName = "NotDo Application"; Version = "2.0.0"; Owner = "Oliver"; Size = 200 }
    [PSCustomObject]@{AppName = "WillDo Application"; Version = "3.0.0"; Owner = "Karin"; Size = 300 }
    [PSCustomObject]@{AppName = "CanDo Application"; Version = "4.0.0"; Owner = "David"; Size = 400 }
    [PSCustomObject]@{AppName = "WouldDo Application"; Version = "5.0.0"; Owner = "Kenneth"; Size = 500 }
)


# Commands can be used
$apps[0]
$apps.AppName[3]
$apps.Version
$apps

# For each concept in list of custom object

foreach ($i in $apps) {
    "$($i.Owner) , $($i.AppName), $($i.Size)"
}


#Pipeline --> ci/cd, ci's Artifact gets deployed by cd
#             1  --> 2
# Output of a command is used by other command as input
# $_.  --> represents left side output

"DeVops_Insiders" | ForEach-Object {$_.ToUpper()}
$AppName = "WebClient"
Get-Service | Where-Object {$_.Name -eq $AppName}

$AppName = "WebClient"
Get-Service | Where-Object {$_.Name -eq $AppName} | Select-Object Status  # Never hard code your script

Get-ChildItem -Path "C:\Users\s\Documents" | Where-Object {$_.Length -lt 1Mb}


