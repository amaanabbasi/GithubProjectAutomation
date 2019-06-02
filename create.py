import sys
import requests
import json

user= 'your-username'
token = 'github-access-token'

repo = str(sys.argv[1])


payload = {'name': repo}

login = requests.post('https://api.github.com/' + 'user/repos', auth=(user,token), data=json.dumps(payload))
print(login.json())