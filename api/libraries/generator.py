from faker import Faker

fake = Faker()

def generate_new_costumer():
    costumer = {
        "ssn": fake.ssn(),
        "name": fake.name(),
        "phone": fake.cellphone_number(),
        "country": fake.country(),
        "company": fake.company()
    }
    return costumer