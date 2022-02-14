/**
 Task 1. Работа с кортежами
 Вы работаете над приложением "Информация о вас и ваших друзьях". Ваша задача создать список людей с минимальной информацией о них и объединить одно из полей для создания общего значения.

 Алгоритм выполнения
 1. Создайте кортеж с тремя параметрами: ваш любимый фильм, ваше любимое число и ваше любимое блюдо. Все элементы кортежа должны быть именованы.
 2. Одним выражением запишите каждый элемент кортежа в три константы.
 3. Создайте второй кортеж, аналогичный первому по параметрам, но описывающий другого человека (с другими значениями).
 4. Обменяйте значения в кортежах между собой (с использованием дополнительного промежуточного кортежа).
 5. Создайте новый кортеж, элементами которого будут любимое число из первого кортежа, любимое число из второго кортежа и разница любимых чисел первого и второго кортежей.
 */

// 1
var user1: (film: String, number: Int, dish: String) = ("Bond 007", 777, "Meat")
// 2
let (bestFilm, bestNumber, bestDish) = user1
// 3
var user2: (film: String, number: Int, dish: String) = ("Fast and Furious", 11, "Fish")
// 4
var temp: (String, Int, String) = user2
user2 = user1
user1 = temp
print(user1)
print(user2)
// 5
var numbers: (Int, Int, Int) = (user1.number, user2.number, user1.number - user2.number)
print(numbers)

/**
 Task 2.
 Представьте, что вы работаете над приложением электронный дневник. Создайте словарь, где ключом будет имя студента, а значением будет другой словарь из 3 элементов, содержащий название предмета и оценку.
 */
var lessons = [String: Int]()
lessons["Math"] = 4
lessons["English"] = 4
lessons["Biology"] = 4

var diary = [String: Dictionary<String, Int>]()
diary["Ivanov"] = lessons
print(diary)

/**
 Task 3.
 Вы разрабатываете приложение "Шахматы". Вашей задачей будет создать фигуру на игровом поле.

 Алгоритм выполнения
 Создайте псевдоним типа (typealias) Chessman для типа словаря [String: (alpha:Character, num: Int)?]. Данный тип описывает шахматную фигуру на игровом поле.
 В ключе словаря должно храниться имя фигуры, например «Белый король», а в значении — кортеж, указывающий на координаты фигуры на игровом поле. Если вместо кортежа находится nil, это означает, что фигура убита (не имеет координат на игровом поле).

 Создайте переменный словарь Chessmans типа Chessman и добавьте в него три произвольные фигуры, одна из которых не должна иметь координат.

 Создайте конструкцию if-else, которая проверяет, убита ли переданная ей фигура (элемент словаря Chessmans), и выводит на консоль информацию либо о координатах фигуры, либо о ее отсутствии на игровом поле.

 Подсказка Для получения координат переданной фигуры используйте опциональное связывание.
 */
typealias Chessman = [String: (alpha: Character, num: Int)?]

var Chessmans = Chessman()
Chessmans["Белый король"] = ("E", 6)
Chessmans["Синяя пешка"] = ("B", 3)
Chessmans["Черный конь"] = nil

if let info = Chessmans["Белый король"] {
    if let alpha = info?.alpha, let num = info?.num {
        print("\(alpha) \(num)")
    }
}

/**
 Task 4.
 Вам необходимо доработать программу из Задачи 3 таким образом, чтобы она автоматически анализировала не одну переданную ей фигуру, а все фигуры, хранящиеся в переменной Chessmans.
 */
for (key, _) in Chessmans {
    if let info = Chessmans[key] {
        if let alpha = info?.alpha, let num = info?.num {
            print("Фигура \(key) на \(alpha)\(num)")
        }
    } else {
        print("Фигура \(key) отсутствует на поле")
    }
}
