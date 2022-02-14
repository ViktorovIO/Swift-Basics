/**
 Task 1.
 Какого типа переменные подойдут для хранения следующей информации:

 Возраст человека; - Integer
 Население города; - Integer
 Число звезд в галактике; - Integer
 Один байт ОЗУ; - Char
 Средняя зарплата за год; - Integer
 Цвет фигуры; - String
 Длина в мм; - Integer
 Длина в см; - Double
 Фамилия человека; - String
 Время года; - String
 Пол человека. - Char / String
 */

/**
 Task 2.
 Объявите и проинициализируйте переменные из задачи 1, дав им имена по смыслу. Выведите значения этих переменных в консоль в форме <Название: значение>. Задачу необходимо сделать в Playground.

 Например, Возраст человека: 25.
 */

var age: Int = 25;
print("Возраст человека: \(age)");

var cityPopulation: Int = 1200000;
print("Население города: \(cityPopulation)");

var galaxyStarsCount: Int = 1000000000;
print("Число звезд в галактике: \(galaxyStarsCount)");

let byte: Character = "A";
print("Один байт ОЗУ: \(byte)");

var medianYearPayment: Int = 60000;
print("Средняя зарплата за год: \(medianYearPayment)");

let shapeColor: String = "Red";
print("Цвет фигуры: \(shapeColor)");

var lengthMM: Int = 120;
print("Длина в мм: \(lengthMM)");

var lengthCM: Double = 1.20;
print("Длина в см: \(lengthCM)");

let lastName: String = "Viktorov";
print("Фамилия человека: \(lastName)");

var season: String = "Summer";
print("Время года: \(season)");

let sex: Character = "M";
print("Пол человека: \(sex)");

/**
 Task 3.
 Решим бухгалтерскую задачу. Каждый год бухгалтер получает информацию об изменении зарплат сотрудников, ему нужно провести расчеты. Известны зарплаты трех сотрудников:

 1 сотрудник -- 55000

 2 сотрудник -- 40000

 3 сотрудник -- 70000

 Через месяц зарплата первого выросла в 2 раза, зарплата второго выросла на 15000, заплата третьего осталась без изменения.

 Реализуйте расчет новых сумм с помощью арифметических операций с присваиванием. Выведите новые суммы в консоль, каждую с новой строки.
 */

var firstEmployee: Int = 55000;
var secondEmployee: Int = 40000;
var thirdEmployee: Int = 70000;

firstEmployee *= 2;
print("Новая зарплата первого сотрудника: \(firstEmployee)");

secondEmployee += 15000;
print("Новая зарплата второго сотрудника: \(secondEmployee)");

print("Зарплата третьего сотрудника: \(thirdEmployee)");
