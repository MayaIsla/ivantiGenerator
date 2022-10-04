

$Body = @{
    tenant = ""
    username = ""
    password = ""
    role = ""
}

$authCode = Invoke-RestMethod -Method 'POST' -Uri "https://tenant.url/api/rest/authentication/login" -Body $body

$headers = @{
    Authorization=$authCode
    Content='application/json'
}


$GetMethod = Invoke-RestMethod -Method 'Get' -Uri "https://becn.saasit.com/api/odata/businessobject/businessobject/NameofSavedSearch?ActionID=ActionIDfromMetaData" -Headers $headers


#$outlook = new-object -comobject outlook.application
#$email = $outlook.CreateItem(0)
#$email.To = "youremail@gmail.com"
#$email.Subject = ""
#$email.Body = $GetMethod
#$email.Send()
