import random

def generate_phone():
    # Gera o DDD aleatório (código de área)
    ddd = random.randint(11, 99)

    # Gera o primeiro dígito fixo "9" seguido de oito números aleatórios
    first_digit = 9
    phone_number = ''.join([str(random.randint(0, 9)) for _ in range(8)])

    # Retorna o número de celular no formato (XX) 9XXXX-XXXX
    return f"({ddd}) {first_digit}{phone_number[:4]}-{phone_number[4:]}"