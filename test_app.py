import pytest
from fastapi.testclient import TestClient
from mini_groq import app  # Assurez-vous d'utiliser un underscore

client = TestClient(app)

def test_status():
    response = client.get("/status")
    assert response.status_code == 200
