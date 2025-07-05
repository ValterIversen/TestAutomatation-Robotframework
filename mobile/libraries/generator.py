from faker import Faker
from datetime import datetime
import random

fake = Faker()

def generate_fake_user():
    user = {
        "cpf": fake.cpf(),
        "name": fake.name(),
        "email": fake.email(),
        "password": fake.password(length=12, special_chars=True, digits=True, upper_case=True, lower_case=True)
    }
    return user