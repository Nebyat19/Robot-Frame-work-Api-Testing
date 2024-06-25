import requests

url = 'https://trello.com/1/cards'

headers = {
    'User-Agent': 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:127.0) Gecko/20100101 Firefox/127.0',
    'Accept': 'application/json,text/plain',
    'Accept-Language': 'en-US,en;q=0.5',
    'Accept-Encoding': 'gzip, deflate, br, zstd',
    'Referer': 'https://trello.com/b/dIX9eqti/software-group',
    'X-Trello-Client-Version': 'build-203925',
    'X-Trello-Operation-Source': 'model-loader',
    'X-Trello-Operation-Name': 'load:Plugin',
    'Connection': 'keep-alive',
    'Cookie': 'atlCohort={"bucketAll":{"bucketedAtUTC":"2024-06-20T17:02:25.046Z","version":"2","index":14,"bucketId":0}}; ajs_anonymous_id=%22c22d3344-a2c3-cf9e-fbf9-d4d63640446f%22; atl_xid.ts=1718902950164; atl_xid.current=%5B%7B%22type%22%3A%22xc%22%2C%22value%22%3A%222ab72e6e-6dd9-482f-8e37-5c958a0d2b80%22%2C%22createdAt%22%3A%222024-02-16T17%3A51%3A32.802Z%22%7D%5D; _otPreferencesSynced=; atlUserHash=1393648548; hasAccount=atlassian; dsc=0a5919fb08b835d81d47182522adcae2fca9751b9b657395a12bb43a2ec8848d; atl-bsc-current-locale=ET-AA; atl-bsc-consent-token=002111100000; atl-bsc-show-banner=0; lang=en-US; bxp_gateway_request_id=a83d73b6-005b-1991-ed6c-e99480967cd0; OptanonConsent=isGpcEnabled=0&datestamp=Thu+Jun+20+2024+20%3A02%3A31+GMT%2B0300+(East+Africa+Time)&version=202403.2.0&browserGpcFlag=0&isIABGlobal=false&identifierType=null&hosts=&landingPath=https%3A%2F%2Ftrello.com%2F&groups=1%3A1%2C2%3A1%2C3%3A1%2C4%3A1; atlassian.account.xsrf.token=791db797-624e-44db-8222-589b20e2d965; cloud.session.token=eyJraWQiOiJzZXNzaW9uLXNlcnZpY2UvcHJvZC0xNTkyODU4Mzk0IiwiYWxnIjoiUlMyNTYifQ.eyJhc3NvY2lhdGlvbnMiOltdLCJzdWIiOiI3MTIwMjA6YTI5N2VkZTYtNTcyYS00ZGU4LWJiOTQtMDcxYWM4NzYxYTQ5IiwiZW1haWxEb21haW4iOiJnbWFpbC5jb20iLCJpbXBlcnNvbmF0aW9uIjpbXSwiY3JlYXRlZCI6MTcxODkwMjgyMywicmVmcmVzaFRpbWVvdXQiOjE3MTg5MDM1NjksInZlcmlmaWVkIjp0cnVlLCJpc3MiOiJzZXNzaW9uLXNlcnZpY2UiLCJzZXNzaW9uSWQiOiJmNTdlYmUyZi00Yjc4LTRiNWQtYjI5My05MDg5NDE5NDAwMTUiLCJzdGVwVXBzIjpbXSwiYXVkIjoiYXRsYXNzaWFuIiwibmJmIjoxNzE4OTAyOTY5LCJleHAiOjE3MjE0OTQ5NjksImlhdCI6MTcxODkwMjk2OSwiZW1haWwiOiJhZGFtd2Vpc3M2NTFAZ21haWwuY29tIiwianRpIjoiZjU3ZWJlMmYtNGI3OC00YjVkLWIyOTMtOTA4OTQxOTQwMDE1In0.w2g_gLV_oBm2UWuXhgC60F5EkGvyQkIhzPnESb6vQQi7uX49V6mI3bkuMW9mvmlemLjSWzSr1wX6VFlMoAzKIbUVEyhLhW6vOTf8aQk69LDbFXtBn3IMCq--GUKKhKtdEn9XhrPgVmzps5AUkl-dYHKE8ZlyKERosTzltMaE9jsqxffdqyst7NqmKWRqoaSuhYTynHkPnR3-dMFdcI9h9OIWebYoKImmgLWHaWnIXIiaRzV_zuvcmKQkzBAegpud6nyowQ2YiNjjRye1914WoYq3A7Iy2lwYne1MLl5-jgdtdQyzJSHQGh6dN7M97p3lseSmsuL947BLi7JXwShzsA; loggedIn=1; aaId=712020%3Aa297ede6-572a-4de8-bb94-071ac8761a49; idMember=65cfa15e25d7553446fd03b8',
    'Sec-Fetch-Dest': 'empty',
    'Sec-Fetch-Mode': 'cors',
    'Sec-Fetch-Site': 'same-origin',
    'TE': 'trailers'
}

data = {
    "idList": "65cfa178fd7ca48f47628047",
    "name": "new card name",
    "closed": False,
    "isTemplate": False,
    "pos": 65538,
    "cardRole": None,
    "dsc": "0a5919fb08b835d81d47182522adcae2fca9751b9b657395a12bb43a2ec8848d"
}

try:
    response = requests.post(url, json=data, headers=headers)
    response.raise_for_status()  # Raise an error for bad status codes
    print('Response data:', response.json())
except requests.exceptions.RequestException as e:
    print('Error fetching data:', e)
