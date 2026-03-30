# test_app.py
from app import welcome_message, calculate_uptime

def test_welcome():
    assert welcome_message() == "Hello DevOps Master!"

def test_uptime_calculation():
    assert calculate_uptime(1) == 24
    assert calculate_uptime(10) == 240
