//
//  ContentView.swift
//  MyNewTestProject
//
//  Created by Дарья Пивовар on 22.03.2023.
//

import SwiftUI
import Combine
import SlidingTabView

struct ContentView: View {
   
    @State private var tabIndex = 0
    
    var body: some View {
        
        VStack {
            SlidingTabView(
                selection: $tabIndex,
                tabs: ["Home", "Favorites"],
                animation: .easeInOut,
                activeAccentColor: .green,
                selectionBarColor: .green
            )
            
            if tabIndex == 0 {
                HomeView()
            } else {
                FavoritesView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
