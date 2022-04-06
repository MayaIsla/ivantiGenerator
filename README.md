# Readme
Runs a search in the Ivanti ticketing system for an open ticket. Then uses win32 outlook client package to sync to a local Outlook account. Sends output JSON from the Ivanti Service Manager API in the body of the email if necessary. 

You may run the batch file with task scheduler to have these emails automated. Please note that the batch file has to be in the same folder as your .py file.

Be sure the batch file has double quotes (") and the 'start in' is the python executable in the SAME directory as your python code.
![image](https://user-images.githubusercontent.com/43270477/161886789-d4712a48-c633-4d5f-ba8c-d51947f38ebf.png)

You may set the trigger to any event that you want.

You may also edit the post and get statuses as well as the authentication in order to run this script. (I removed mine for privacy reasons). You may set to any tenant that you want. 

