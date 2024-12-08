from faker import Faker
from datetime import datetime
import random

fake = Faker()

def generate_fake_user():
    
    birth_date_str = fake.date()
    birth_date = datetime.strptime(birth_date_str, '%Y-%m-%d').date()

    day = birth_date.day
    month = birth_date.month
    year = birth_date.year

    gender = random.choice([-1, 1, 2])
    
    pronoun = random.choice([1, 2, 6])

    user = {
        "first_name": fake.first_name(),
        "last_name": fake.last_name(),
        "birth_day": day,
        "birth_month": month,
        "birth_year": year,
        "gender": gender,
        "pronoun": pronoun,
        "email": fake.email(),
        "password": fake.password(length=12, special_chars=True, digits=True, upper_case=True, lower_case=True)
    }
    return user