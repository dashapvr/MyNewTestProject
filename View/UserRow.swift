//
//  UserRow.swift
//  MyNewTestProject
//
//  Created by Дарья Пивовар on 22.03.2023.
//

import SwiftUI
import SDWebImageSwiftUI

struct UserRow: View {
    var user: User
    var body: some View {
        HStack(spacing: 15) {
            AnimatedImage(url: URL(string: user.avatarUrl)!)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .shadow(radius: 5)
            
            Text(user.login)
                .fontWeight(.bold)
                .foregroundColor(.black)
        }
        .padding(.vertical, 4)
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        let mockUser = User(id: 1, login: "mojombo", avatarUrl: "https://avatars.githubusercontent.com/u/1?v=4", url: "https://api.github.com/users/mojombo")
        UserRow(user: mockUser)
    }
}
