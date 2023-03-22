//
//  HomeView.swift
//  MyNewTestProject
//
//  Created by Дарья Пивовар on 22.03.2023.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject private var userViewModel = UserViewModel()
    @State private var showFavorites = false
    var body: some View {
        NavigationView {
            List {
                ForEach(userViewModel.users, id: \.id) { user in
                        HStack {
                            UserRow(user: user)
                            
                            Spacer()
                            
                            Button {
                                self.showFavorites.toggle()
                            } label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.green)
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(.red)
                                }
                            }.sheet(isPresented: $showFavorites) {
                                FavoritesView()
                            }
                        }
                    }
                LoaderView(isFailed: userViewModel.isRequestFailed)
                    .onAppear(perform: fetchData)
                    .onTapGesture(perform: onTapLoadView)
            }
            .navigationTitle("GitHub Users")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
    
    private func fetchData() {
        userViewModel.getUsers()
    }
    
    private func onTapLoadView() {
        if userViewModel.isRequestFailed {
            userViewModel.isRequestFailed = false
            fetchData()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
