# library/CustomKeywords.py

import requests
import ast
class CustomKeywords:
    def make_request(self, method, url, headers, payload=None):        
        if isinstance(headers, str):
            headers = ast.literal_eval(headers)           
        response = requests.request(method, url, headers=headers, json=payload)
        response.raise_for_status()
        return {
            "status_code": response.status_code,
            "json": response.json()
        }
