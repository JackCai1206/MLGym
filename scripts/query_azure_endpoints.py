from azure.identity import DefaultAzureCredential, get_bearer_token_provider, AzureCliCredential

credential = get_bearer_token_provider(AzureCliCredential(), "api://trapi/.default")

token = credential()
url = "https://trapi.research.microsoft.com/tmds/deployments"
headers = {
    "Authorization": f"Bearer {token}"
}

import requests
# Make request
response = requests.get(url, headers=headers)
for line in response.iter_lines():
    print(line.decode('utf-8'))