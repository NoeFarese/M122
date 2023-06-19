$username = "LazyTestUser"   # UserName
$fullName = "Lazy Test User" # Full name
$logFile = "\\server\folder\log.txt"

Function Create-LocalUser {
    process {
      try {
        New-LocalUser "$username" -Password $password -FullName "$fullname" -Description "local user" -ErrorAction stop
        Write-Log -message "$username local user created"
        # Add new user to administrator group
        Add-LocalGroupMember -Group "Users" -Member "$username" -ErrorAction stop
        Write-Log -message "$username added to the local users group"
      }catch{
        Write-log -message "Creating local account failed" -level "ERROR"
      }
    }    
}
