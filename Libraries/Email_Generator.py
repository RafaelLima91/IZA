import random
import string


def generate_email(domain="example.com"):
    # Gera um nome aleatório para o e-mail
    name_length = random.randint(5, 10)  # Define o tamanho do nome entre 5 e 10 caracteres
    name = ''.join(random.choices(string.ascii_lowercase + string.digits, k=name_length))

    # Monta o e-mail aleatório
    email = f"{name}@{domain}"

    return email