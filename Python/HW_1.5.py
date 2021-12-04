# Python HW 5 Functions, Lists
import random
import secrets

import randomtimestamp as rd
import pymorphy2
#  - Любой начальный список минимум 70 элементов.(Есть задания где можно меньше, по усмотрению)
#  - Все результаты выводить в консоль.
#
# 1) Написать скрипт который в создаст список целых чисел.

print('===========1============')

list_items = list(range(30))
print('Creating a List')
print(list_items)

# 2) Написать скрипт который в создаст список целых чётных чисел.
print('===========2============')

for num in list_items:

    # checking condition
    if num % 2 == 0:
        print('=', num, end=" ")
        print('- even')

# 3) Написать скрипт который в создаст список целых нечётных чисел.
print('===========3============')

for num in list_items:

    # checking condition
    if num % 2 == 1:
        print('=', num, end=" ")
        print('- odd')

# 4) Написать скрипт который из списка целых чисел выведет чётные числа.
print('===========4============')

list_items_2 = [x for x in list_items if x % 2 == 0]
print('Creating a List_even:')
print(list_items_2)

# 5) Написать скрипт который из списка целых чисел выведет нечётные числа.
print('===========5============')

list_items_3 = [x for x in list_items if x % 2 == 1]
print('Creating a List_odd:')
print(list_items_3)

# 6) Написать скрипт который из списка целых чисел выведет чётные числа которые делятся на 5 без остатка.
print('===========6============')

list_items_4 = [x for x in list_items if x % 5 == 0]
print('Creating a List_on_"5": even')
print(list_items_4)

# 7) Написать скрипт который из списка целых чисел выведет количество нечётных чисел которые делятся на 5 без остатка.
print('===========7============')

list_items_5 = [x for x in list_items if x % 5 == 1]
print('Creating a List_on_"5": odd')
print(list_items_5)

# 8) Написать скрипт который в создаст список целых рандомных чисел.
print('===========8============')

randomlist = random.sample(range(10, 30), 5)
print('Creating a List_random:')
print(randomlist)

# 9) Написать функцию которая, получив на вход любой из выше созданных списков, разобьёт его списки по 5 элементов.
print('===========9============')

def list_split(n, size):
    for x in range(0, len(n), size):
        yield n[x:x + size]

print(list(list_split(list_items, 5)))

# 10) Написать функцию которая, получив на вход список целых чисел, вернёт 2 списка, список чётных и список нечётных чисел.
print('===========10============')

def group(list_items):
    result = ([], [])
    for x in list_items:
        result[x % 2].append(x)
    return result

(even, odd) = group(list_items)
print(even)
print(odd)

# 11) Написать скрипт который сгенерирует список под названием 5_stars из списков по 5 элементов целых чисел.
print('===========11============')

stars = [[random.randint(0, 5) for col in range(5)] for row in range(5)]
print('5_stars = ', stars)

# 12) Написать скрипт который выведет список из сумм каждого внутреннего списка из  5_stars
print('===========12============')

sum_list = stars
print('5_stars = ', (sum(sum(sum_list, []))))

# 13) Написать функцию которая на вход получает список 5_stars, а вернёт 2 списка. В одном списке внутренние списки из 5_stars сумма чисел которых >= 100, а другой сумма чисел которых < 100. Если какого-то списка не получится, то вместо него вернуть текст “No lists”
print('===========13============')


def fnc(sum_list):
    lst1 = [x for x in sum_list if sum(x) < 100]
    lst2 = [x for x in sum_list if sum(x) >= 100]
    if not lst1:
        lst1 = "No list"
    if not lst2:
        lst2 = "No List"
    return lst1, lst2


return_list = fnc(sum_list)
print(return_list)

# 14) Написать функцию которая получив на вход ваш возраст, выведет вам через какой срок вы сумеете отложить 10 000$, 20 000$, 30 000$, 50 000$, 100 000$ в кубышку.
print('===========14============')

list_1 = []
list_2 = []
list_3 = []
list_4 = []
list_5 = []

def func(age):
    age_1 = list(range(0, 10))
    age_2 = list(range(10, 15))
    age_3 = list(range(15, 19))
    age_4 = list(range(19, 25))
    age_5 = list(range(25, 30))
    age_6 = list(range(30, 45))
    age_7 = list(range(45, 60))
    age_8 = list(range(60, 101))
    age_9 = list(range(101, 99999))
    reserve_per_month_1 = 25
    reserve_per_month_2 = 50
    reserve_per_month_3 = 150
    reserve_per_month_4 = 500
    reserve_per_month_5 = 1500
    reserve_per_month_6 = 2500
    reserve_per_month_7 = 3000
    reserve_per_month_8 = 2000
    reserve_per_month_9 = 0
    reserve_money = 0
    age_difference = 0
    while age:
        if int(age) in age_1:
            reserve_money = reserve_money + (reserve_per_month_1 * 12)
            age_difference += 1
            age += 1
        if int(age) in age_2:
            reserve_money = reserve_money + (reserve_per_month_2 * 12)
            age_difference += 1
            age += 1
        if int(age) in age_3:
            reserve_money = reserve_money + (reserve_per_month_3 * 12)
            age_difference += 1
            age += 1
        if int(age) in age_4:
            reserve_money = reserve_money + (reserve_per_month_4 * 12)
            age_difference += 1
            age += 1
        if int(age) in age_5:
            reserve_money = reserve_money + (reserve_per_month_5 * 12)
            age_difference += 1
            age += 1
        if int(age) in age_6:
            reserve_money = reserve_money + (reserve_per_month_6 * 12)
            age_difference += 1
            age += 1
        if int(age) in age_7:
            reserve_money = reserve_money + (reserve_per_month_7 * 12)
            age_difference += 1
            age += 1
        if int(age) in age_8:
            reserve_money = reserve_money + (reserve_per_month_8 * 12)
            age_difference += 1
            age += 1
        if int(age) in age_9:
            print("Скорее всего вам деньги уже не нужны)")
            break
        if reserve_money >= 10000:
            list_1.append(age_difference)
        if reserve_money >= 20000:
            list_2.append(age_difference)
        if reserve_money >= 30000:
            list_3.append(age_difference)
        if reserve_money >= 50000:
            list_4.append(age_difference)
        if reserve_money >= 100000:
            list_5.append(age_difference)
            break
func(age = int(input("14. Пожалуйста введите сколько вам лет: ")))
if list_1 != []:
    time_1 = int(list_1[0])
    print("Вы накопите 10000$ за ", time_1, "лет")
else:
    print("К сожалению вы не успели накопить 10000:)")
if list_1 != []:
    time_2 = int(list_2[0])
    print("Вы накопите 20000$ за ", time_2, "лет")
else:
    print("К сожалению вы не успели накопить 20000:)")
if list_3 != []:
    time_3 = int(list_3[0])
    print("Вы накопите 30000$ за ", time_3, "лет")
else:
    print("К сожалению вы не успели накопить 30000:)")

if list_4 != []:
    time_4 = int(list_4[0])
    print("Вы накопите 50000$ за ", time_4, "лет")
else:
    print("К сожалению вы не успели накопить 50000:)")
if list_5 != []:
    time_5 = int(list_5[0])
    print("Вы накопите 100000$ за ", time_5, "лет")
else:
    print("К сожалению вы не успели накопить 100000:)")

# 15) Написать функцию которая получив на вход стартовую ЗП Junior QA и количество лет стажа выведет в консоль прогресс роста ЗП по каждому году из введенного количества лет стажа. Внутри функция учитывает дорожную карту развития скилов QA и список, полезных для компании, активностей которые может делать QA. Free implementation of function body logic
print('===========15============')

def salarystart(payment_start, experience):
    year_count_for_experience = 1.10
    soft_skills = 1
    auto_tests = 2
    english = 1.1
    english_b_2 = 1.15
    web_tech = 1
    mobile_tech = 1
    managerial_skills = 1.25
    midl_qa = 3
    skills = [soft_skills, auto_tests, english_b_2, english, web_tech, mobile_tech, managerial_skills, midl_qa]
    payment_1 = []
    payment_1.append(payment_start)
    years = 0
    while experience > 0:
        payment = payment_1[-1] * year_count_for_experience * secrets.choice(skills)
        experience -= 1
        payment_1.append(payment)
        years += 1
        print("Ваша зарплата после",years, "лет: ", payment)

salarystart(int(input('ведите стартовую зарплату = ')), int(input('введите ваш стаж = ')))

# 16) Написать скрипт который сгенерирует список имён пользователей. Список имён вывести в консоль.
print('===========16============')

import names


for i in range(0, 20):
    namelist = []
    user_name = names.get_full_name()
    namelist.append(user_name)
    # print('user_name =', user_name)
    print('user_name =', namelist)

# 17) Написать скрипт который сгенерирует список имён файлов. К каждому имени  файла надо прикрепить номер итерации цикла как порядковый номер.
print('===========17============')

name_list_file = ['file_%s' % i for i in range(10)]
print(name_list_file)

for i, link in enumerate(name_list_file, 0):
    print(f'{i}.{link}')

# 18)  Написать скрипт который сгенерирует список списков. Каждый элемент списка это список в котором 0-й элемент - это имя пользователя, а 1-й - элемент это дата регистрации.
print('===========18============')

file_name = []

for i in range(0, 10):
    file_name_2 = []
    file_name_2.append(names.get_full_name())
    file_name_2.append(str(rd.random_date()))
    file_name.append(file_name_2)
print("user_name =  ", file_name)

# 19) Написать скрипт который сгенерирует список Employees списков . Каждый элемент списка - это список в котором:
# 0-й - элемент - это имя пользователя,
# 1-й - элемент - это логин,
# 2-й - элемент - это пароль,
# 3-й - элемент - это email (email тоже генерировать),
# 4-й - элемент - это дата регистрации
print('===========19============')

Employees = []
chars = list('+-/*!&$#?=@<>abcdefghABCDMNOZ1234567890')
login = list('Abcdefghijklmno')
import pandas as pd
import string

def random_char(y):
       return ''.join(random.choice(string.ascii_letters) for x in range(y))

(random_char(7)+"@gmail.com")

for i in range(0, 10):
    file_name_3 = []
    file_name_3.append(names.get_full_name())
    file_name_3.append([random.choice(login).join(login) for x in range(1)])
    file_name_3.append([random.choice(chars).join(chars) for x in range(1)])
    file_name_3.append((random_char(7)+"@gmail.com"))
    # file_name_3.append(str(rd.random_date()))
    file_name_3.append([random.choice(pd.date_range(start="2018-09-09", end="2020-02-02"))])

    Employees.append(list(file_name_3))

print(Employees)

# 20) Написать скрипт который сгенерирует список family списков. Каждый элемент списка - это список в котором:
# 0-й - элемент - это логин,
# 1-й - элемент - это имя,
# 2-й - элемент - семейный статус (True, False - генерировать рандомно),
print('===========20============')

family = []
login_1 = list('Abcdefghij027o')

for i in range(10):
    file_name_4 = []
    file_name_4.append([random.choice(login).join(login_1) for x in range(1)])
    file_name_4.append(names.get_full_name())
    file_name_4.append(random.choice(("True", "False")))

    family.append(list(file_name_4))

print(family)

# 21) Написать скрипт который сгенерирует список gender списков. Каждый элемент списка - это список в котором:
# 0-й - элемент - это логин,
# 1-й - элемент - это имя,
# 2-й - элемент - гендер (1-м, 0-ж)
print('===========21============')

gender = []
login_2 = list('defghij027o')

for i in range(0, 11):
    file_name_5 = []
    file_name_5.append([random.choice(login).join(login_1) for x in range(1)])
    file_name_5.append(random.choice(('Константин - male', 'Любовь - female', 'Виктор - male', 'Венера - female', 'Дамир - male', 'Таисия - female',  'Евгений - male', 'Наташа - female', 'Егор - male', 'Арина - female', 'Никита - male')))
    gender.append(list(file_name_5))

print(gender)

# 22) Написать скрипт который сгенерирует список salary списков. Каждый элемент списка - это список в котором:
# 0-й - элемент - это логин,
# 1-й - элемент - это имя,
# 2-й - элемент - зарплата (генерироовать от 300$ до 5000$)
print('===========22============')

salary = []
login_3 = list('!$3defghij027o')
# salary_user = list(random.randint())
for i in range(0, 10):
    file_name_6 = []
    file_name_6.append([random.choice(login).join(login_1) for x in range(1)])
    file_name_6.append([names.get_full_name()])
    file_name_6.append([random.choice((300, 500, 1000, 1500, 2000, 2500, 3000, 3500, 4000, 4500, 5000))])

    salary.append(list(file_name_6))

print(salary)

# 23) Написать скрипт который создаст список имён работников из salary у которых ЗП от 1500$ до 3000$
print('===========23============')

work_user = []
work_in_salary = []


while salary != work_user:
    salary_list = [salary[0][2][0]]
    blank_sheet = []
    if (salary_list[0]) in range(1500, 3500):
        blank_sheet.append(salary[:1][0])
        salary = salary[1:]
    else:
        salary = salary[1:]
    if blank_sheet != work_user:
        work_in_salary.append(blank_sheet[0])

print(work_in_salary)

# 24) Написать скрипт который создаст список имён мужчин из gender.
print('===========24============')

gender_2 = ('Константин - male', 'Любовь - female', 'Виктор - male', 'Венера - female', 'Дамир - male', 'Таисия - female',  'Евгений - male', 'Наташа - female', 'Егор - male', 'Арина - female', 'Никита - male')

man_gender = []
man_gender_1 = gender_2[::2]
man_gender.append(list(man_gender_1))
print('man_gender = ', man_gender)

# 25) Написать скрипт который создаст список имён женщин из gender.
print('===========25============')

woman_gender = []
woman_gender_1 = gender_2[1::2]
woman_gender.append(list(woman_gender_1))
print('woman_gender = ', woman_gender)

# 26) Написать скрипт который создаст список имён неженатых мужчин из family.
print('===========26============')

false_man = []

for i in range(3):
    man = []
    man.append(random.choice(man_gender[0]))
    man.append("False")

    false_man.append(list(man))

print(false_man)

# 27) Написать скрипт который создаст список имён незамужних женщин из family.
print('===========27============')

false_woman = []

for i in range(2):
    woman = []
    woman.append(random.choice(woman_gender[0]))
    woman.append("False")

    false_woman.append(list(woman))

print(false_woman)



# 28) Написать скрипт который создаст список имён неженатых мужчин с ЗП больше или равной 1500$. Используйте Employees, family, gender, salary. Реализуйте как скрипт, без функций


# 29) Реализуйте пункт 28 через через функции.


# 30) Поешьте и выспитесь)
