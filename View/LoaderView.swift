//
//  LoaderView.swift
//  MyNewTestProject
//
//  Created by Дарья Пивовар on 22.03.2023.
//

import SwiftUI

struct LoaderView: View {
    let isFailed: Bool
    var body: some View {
        Text(isFailed ? "Failed. Tap to retry" : "Loading..")
            .foregroundColor(.green)
            .padding()
    }
}

struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoaderView(isFailed: false)
    }
}
