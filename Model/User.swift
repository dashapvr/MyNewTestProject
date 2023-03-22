//
//  User.swift
//  MyNewTestProject
//
//  Created by Дарья Пивовар on 22.03.2023.
//

import Foundation

struct User: Decodable {
    let id: Int
    let login: String
    let avatarUrl: String
    let url: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case login = "login"
        case avatarUrl = "avatar_url"
        case url = "url"
    }
}

