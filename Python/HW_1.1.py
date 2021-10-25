# 1) Создать переменную типа String
string = 'Python'
# 2) Создать переменную типа Integer
integer = 30
# 3) Создать переменную типа Float
float_int = 3.5
# 4) Создать переменную типа Bytes
b_type = bytes(1)
# 5) Создать переменную типа List
list_1 = [1, 2, 3, 4, 'tsp', 'log', 'form - data']
# 6) Создать переменную типа Tuple
tuple_1 = ('a', 'b', 'c', 'd')
# 7) Создать переменную типа Set
name_1 = set('Sergei')
# 8. Создать переменную типа Frozen set
fz = frozenset(list_1)
# 9) Создать переменную типа Dict
dict_type = {
    'name': 'Sergei',
    'age': 30,
    'job': 'qa_Engineer',
    'location': {'country': 'Russia',
                 'city': 'Saint Petersburg'}}
# 10) Вывести в консоль все выше перечисленные переменные с добавлением типа данных.
print('1)', string)
print('2)', integer)
print('3)', float_int)
print('4)', b_type)
print('5)', list_1)
print('6)', tuple_1)
print('7)', name_1)
print('8)', fz)
print('9)', dict_type['location'])

# 11) Создать 2 переменные String, создать переменную в которой сканкатенируете эти переменные. Вывести в консоль.
a = 'Arina'
b = 'Milana'
c = a + b
print(a, b, c)
# 12) Вывести в одну строку переменные типа String и Integer используя “,” (Запятую)
print(string, integer)
# 13) Вывести в одну строку переменные типа String и Integer используя “+” (Плюс)
print(string + str(integer))