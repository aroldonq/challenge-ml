import requests

def test_ping():
    response = requests.get('http://localhost:8080/ping')
    status_code = response.status_code
    assert status_code == 200
