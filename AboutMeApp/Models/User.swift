//
//  User.swift
//  AboutMeApp
//
//  Created by Олег Зуев on 28.04.2025.
//

struct User {
    let userName: String
    let password: String
    
    static func getUser() -> User {
        User(
            userName: "user",
            password: "1"
        )
    }
}

