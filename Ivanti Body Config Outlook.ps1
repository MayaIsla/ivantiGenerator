

$Body = @{
    tenant = "becn.saasit.com"
    username = "misl7603"
    password = "AmberStandards12#"
    role = "Admin"
}

$authCode = Invoke-RestMethod -Method 'POST' -Uri "https://becn.saasit.com/api/rest/authentication/login" -Body $body

$headers = @{
    Authorization=$authCode
    Content='application/json'
}


$GetMethod = Invoke-RestMethod -Method 'Get' -Uri "https://becn.saasit.com/api/odata/businessobject/incidents/Current_Support_Services_Tickets?ActionID=54361a74-8ae8-4ac8-a57f-172b06782168" -Headers $headers


#$outlook = new-object -comobject outlook.application
#$email = $outlook.CreateItem(0)
#$email.To = "Maya.Islambouli@becn.com"
#$email.Subject = "Ivanti JSON Email test"
#$email.Body = $GetMethod
#$email.Send()
