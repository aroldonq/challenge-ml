import requests
import json

def test_create_people():
    payload = json.dumps({'name': 'maria', 'birth_date': '18/12/1983', 'country': 'UY'})
    response = requests.post('http://localhost:8080/create', payload)
    status_code = response.status_code
    assert status_code == 200