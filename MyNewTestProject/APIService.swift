//
//  APIService.swift
//  MyNewTestProject
//
//  Created by Дарья Пивовар on 22.03.2023.
//

import Foundation
import Combine

class APIService {
    static let shared = APIService()
    
    func getUsers(perPage: Int = 46, sinceId: Int? = nil) -> AnyPublisher<[User], Error> {
        var components = URLComponents(string: "https://api.github.com/users")!
        components.queryItems = [
        URLQueryItem(name: "per_page", value: "\(perPage)"),
        URLQueryItem(name: "since", value: (sinceId != nil) ? "\(sinceId!)" : nil)
        ]
        let request = URLRequest(url: components.url!, timeoutInterval: 10)
        return URLSession.shared.dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: [User].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
