import random

def generate_cpf():
    def calculate_digit(digits):
        weights = range(len(digits) + 1, 1, -1)
        summation = sum(d * w for d, w in zip(digits, weights))
        remainder = summation % 11
        return 11 - remainder if remainder > 1 else 0

    # Gera os primeiros 9 dígitos do CPF
    cpf = [random.randint(0, 9) for _ in range(9)]

    # Calcula o primeiro dígito verificador
    cpf.append(calculate_digit(cpf))

    # Calcula o segundo dígito verificador
    cpf.append(calculate_digit(cpf))

    # Formata o CPF como 'XXX.XXX.XXX-XX'
    return f'{cpf[0]}{cpf[1]}{cpf[2]}.{cpf[3]}{cpf[4]}{cpf[5]}.{cpf[6]}{cpf[7]}{cpf[8]}-{cpf[9]}{cpf[10]}'