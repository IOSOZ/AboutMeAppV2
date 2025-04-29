//
//  Person.swift
//  AboutMeApp
//
//  Created by Олег Зуев on 28.04.2025.
//

struct Person {
    let name: String
    let surname: String
    var fullName: String {
        "\(name ) \(surname)"
    }
    
    let jodTitle: String
    let company: String
    
    let favoriteColor: String
    let bio: String

    static func getPerson() -> Person{
        Person(
            name: "Олег",
            surname: "Зуев",
            jodTitle: "Инженер-проектировщик",
            company: "«ООО КБ»",
            favoriteColor: "Зеленый",
            bio: """
            Инженер-проектировщик | начинающий iOS-разработчик 
            
            Родом из Тихорецка, Краснодарский край. Окончил СПбПУ им. Петра Великого по специальности «Нанотехнологии и микросистемная техника».
            Днём проектировщик, ночью погружаюсь в мир iOS-разработки. Убеждён, что технологии должны быть красивыми.
            """
           
        )
    }
        
}
