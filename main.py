import requests
import win32com.client as win32

post = {"Tenant": "", "username": "", "password": "", "role": ""}
response = requests.post(
    "https://tenant/api/rest/authentication/login",
    data=post)
#print(response.text)

token = response.text.replace('"', '')
#print(token)

get = {'Authorization': token}
response2 = requests.get(
    "https://Tenant.saasit.com/api/odata/businessobject/incidents/QA?ActionId=ActionIDofQA",
    headers=get)
respond = response2.text
dictResponse = json.loads(respond)
numOpenIncidents = dictResponse['@odata.count']
strNumOpenIncidents = str(numOpenIncidents)

for data in dictResponse['value']:
    subject = (data['Subject'])

#the actionID of the get request (saved search) can be find in the metadeta fields.

if "Invalid Request Payload" in respond:
    outlook = win32.Dispatch('outlook.application')
    mail = outlook.CreateItem(0)
    mail.To = 'Email to be sent to'
    mail.Subject = 'No Incidents found by this half hour.'
    mail.Body = respond
    mail.Send()
else:
    outlook = win32.Dispatch('outlook.application')
    mail = outlook.CreateItem(0)
    mail.To = 'Email to be sent to'
    mail.Subject = strNumOpenIncidents + " Open Incident(s)'
    #mail.Body = respond
    mail.Send()
