# Задача №1
# 1) В процедурном виде (весь код в одной процедуре).
# Обменник. Создать скрипт который будет запускаться из консоли 1 раз из консоли, выдавать результат и зарываться.
#     1. На вход обменнику вводишь количество денег int.
#     2. На выходе в консоль выводится отввет в таком виде:
#                 "Ты ввёл int (Валюта)"
#                 "конвертированная сумма в USD = int"
#     3. Валюту пользователя определите сами.
import time

while True:
    input_data = int(input('Введите количество денег в RUB = '))
    print(f"Ты ввёл {input_data} RUB")

    rub_in_usd = input_data / 71
    print('конвертированная сумма в USD =', rub_in_usd)

    print('====================================================')

    # Задача №2
    # Обменник. Создать скрипт который будет запускаться из консоли 1 раз из консоли, выдавать результат и зарываться.
    #     1. На вход обменнику вводишь количество денег int.
    #     2. На выходе в консоль выводится отввет в таком виде:
    #                 "Ты ввёл int (Валюта)"
    #                 "Конвертированная сумма в USD = int"
    #                 "Конвертированная сумма в EUR = int"
    #                 "Конвертированная сумма в CHF = int"
    #                 "Конвертированная сумма в GBP = int"
    #                 "Конвертированная сумма в CNY = int"
    #     3. Валюту пользователя определите сами.

    input_data = int(input('Введите количество денег в RUB = '))
    print(f"Ты ввёл {input_data} RUB")

    rub_in_eur = input_data / 83
    print('Конвертированная сумма в EUR =', rub_in_eur)

    print('====================================================')

    input_data = int(input('Введите количество денег в RUB = '))
    print(f"Ты ввёл {input_data} RUB")

    rub_in_chf = input_data / 77
    print('Конвертированная сумма в CHF =', rub_in_chf)

    print('====================================================')

    input_data = int(input('Введите количество денег в RUB = '))
    print(f"Ты ввёл {input_data} RUB")

    rub_in_gbp = input_data / 98
    print('Конвертированная сумма в GBP =', rub_in_gbp)

    print('====================================================')

    input_data = int(input('Введите количество денег в RUB = '))
    print(f"Ты ввёл {input_data} RUB")

    rub_in_cny = input_data / 11
    print('Конвертированная сумма в CNY =', rub_in_cny)

    print('****************************************************')
    print('Next iteration => ')
    print('****************************************************')
    break

# Задача №3
# Обменник. Создать скрипт который будет запускаться из консоли 1 раз из консоли, выдавать результат и зарываться.
#     1. На вход обменнику вводишь количество денег int.
#     2. На выходе в консоль выводится отввет в таком виде:
#                 "Ты ввёл int (Валюта)"
#                 "конвертированная сумма в USD = int"
#                 "конвертированная сумма в EUR = int"
#                 "конвертированная сумма в CHF = int"
#                 "конвертированная сумма в GBP = int"
#                 "конвертированная сумма в CNY = int

    # 3. Скипт должен выдать сообщение
    #             "Введите положительное число." Если число меньше 0.
    #             "Вы ввели не число. Введите число." Если введены буквы.
    #             "Вы ввели пустое поле. Введите число." Если введено пустое значение.
    # 4. Валюту пользователя определите сами.

while True:

    input_data = input("Введите количество денег в RUB = ")

    if not input_data:
        print('Вы ввели пустое поле. Введите число.')
        continue
    try:
        int(input_data)
    except ValueError:
        print('Вы ввели не число. Введите число.')
        continue

    try:
        int(input_data)
        if int(input_data) < 0:
            raise ValueError
            break
    except ValueError:
        print('Введите положительное число.')
        prompt = "Введите количество денег в RUB = "
        continue
    rub_in_usd = int(input_data) / 71
    rub_in_eur = int(input_data) / 83
    rub_in_chf = int(input_data) / 77
    rub_in_gbp = int(input_data) / 98
    rub_in_cny = int(input_data) / 11

    print('Ты ввел ', input_data)
    print('Конвертированная сумма в USD ', rub_in_usd)
    print('Конвертированная сумма в EUR ', rub_in_eur)
    print('Конвертированная сумма в CHF ', rub_in_chf)
    print('Конвертированная сумма в GPB ', rub_in_gbp)
    print('Конвертированная сумма в CNY ', rub_in_cny)
    break


print('****************************************************')
print('Next iteration => ')
print('****************************************************')

# Задача №4
# Обменник. Скрипт запускается в консоли и работает постоянно. Остановится нажатием ctrl+c.
#     1. Скрипт сначала выводит "Выберите валюту из ['USD','EUR','CHF','GBP','CNY']"
#     2. Пользователь вводит один из 5 вариантов ['USD','EUR','CHF','GBP','CNY']
#     3. Потом Скрипт выводит "Введите сумму"
#     4. Пользователь вводит сумму int
#     5. Скрипт выводит:
#             "Вы ввели сумму int и валюту "Валюта" "
#             "конвертированная сумма в "Валюта" = int"
#     6. Скипт должен выдать сообщение
#                 "Введите положительное число." Если число меньше 0.
#                 "Вы ввели не число. Введите число." Если введены буквы.
#                 "Вы ввели пустое поле. Введите число." Если введено пустое значение.
#     7. После сообщеня об ошибке, скрипт должен автоматом вернуться к шагу 1.
#     8. Валюту пользователя определите сами.

while True:

    option_data = input("Выберите валюту из USD,EUR,CHF,GBP,CNY = ")
    input_data = input("Введите сумму = ")


    if option_data == "USD" or option_data == "usd":
        print('Вы ввели сумму', input_data, 'и валюту', option_data)
        print('конвертированная сумма в USD = ', rub_in_usd)
    elif option_data == "EUR" or option_data == "eur":
        print('Вы ввели сумму', input_data, 'и валюту', option_data)
        print('конвертированная сумма в EUR = ', rub_in_eur)
    elif option_data == "CHF" or option_data == "chf":
        print('Вы ввели сумму', input_data, 'и валюту', option_data)
        print('конвертированная сумма в CHF = ', rub_in_chf)
    elif option_data == "GBP" or option_data == "gbp":
        print('Вы ввели сумму', input_data, 'и валюту', option_data)
        print('конвертированная сумма в GBP = ', rub_in_gbp)
    elif option_data == "CNY" or option_data == "cny":
        print('Вы ввели сумму', input_data, 'и валюту', option_data)
        print('конвертированная сумма в CNY = ', rub_in_cny)

    prompt = "Введите сумму в рублях: "
    if not input_data:
        print('Вы ввели пустое поле. Введите число.')
        continue
    try:
        int(input_data)
    except ValueError:
        print('Вы ввели не число. Введите число.')
        continue
    try:
        int(input_data)
        if int(input_data) < 0:
            raise ValueError
        break
    except ValueError:
        print('Введите положительное число.')
        # prompt = "Введите сумму в рублях: "

    rub_in_usd = int(input_data) / 71
    rub_in_eur = int(input_data) / 83
    rub_in_chf = int(input_data) / 77
    rub_in_gbp = int(input_data) / 98
    rub_in_cny = int(input_data) / 11
    continue
