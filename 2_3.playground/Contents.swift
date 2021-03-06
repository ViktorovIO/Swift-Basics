/**
 Task 1.
 Создайте три опциональные строковые переменные. Первые две проинициализируйте значениями, оставшуюся переменную проинициализируйте значением nil.
 При помощи nil-coalescing оператора выведите каждое значение в консоль с новой строки.
 Затем присвойте 3-й переменной значение и выведите его в консоль, используя nil-coalescing оператор.
 Есть ли разница между выводами в случае, когда переменная не имела значения и после присвоения.
 
 Создать пять строковых констант. Одни константы это только цифры, другие содержат еще и буквы.
 Найти сумму всех этих констант приведя их к Int. (Используйте optional binding и forced unwrapping)
 */
print("Task 1: \n")

var optionalOne: String? = "Hello"
var optionalTwo: String? = "world!"
var optionalThree: String? = nil

print("Первый опционал: \(optionalOne ?? "Нет значения")")
print("Второй опционал: \(optionalTwo ?? "Нет значения")")
print("Третий опционал: \(optionalThree ?? "Нет значения")\n")

optionalThree = "Теперь значение есть"

print("Третий опционал: \(optionalThree ?? "Нет значения")")

print("\n\n\n")

let one = "23s"
let two = "11"
let three = "44w"
let four = "34"
let five = "16"
var sum = 0

sum += Int(one) ?? 0
sum += Int(two) ?? 0
sum += Int(three) ?? 0
sum += Int(four) ?? 0
sum += Int(five) ?? 0

print(sum)

print("\n\n\n")

/**
Task 2.
Создайте опциональную константу с типом данных Optional<Int>. Проинициализируйте конструктором преобразования строки в целое число Int(String). Вместо String впишите температуру за окном. При помощи конструкции if else выведите в консоль информационные сообщения, например для таких случаев, температура:
 Больше нуля;
 Меньше нуля;
 Меньше -10 градусов;
 Больше 10 градусов;
 Нет значения (nil).
Например, если температура -25 градусов, можно вывести в консоль сообщение “Это что, Сибирь?”
 */
print("Task 2: \n")

var temperature: Int? = Int("10")

if let temp: Int = temperature {
    if temp < -10 {
        print("Холод собачий")
    } else if temp < 0 {
        print("Холод, но не собачий")
    } else if temp > 0 {
        print("Терпимо")
    } else if temp > 10 {
        print("Жара")
    }
} else {
    print("Ошибка в данных")
}
