//
//  FavoritesView.swift
//  MyNewTestProject
//
//  Created by Дарья Пивовар on 22.03.2023.
//

import SwiftUI

struct FavoritesView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Button {
            self.presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "arrow.backward.circle.fill")
        }
            .position(x: 40, y: 30)
            .foregroundColor(.green)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
