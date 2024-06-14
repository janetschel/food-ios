//
//  ContentView.swift
//  food
//
//  Created by Jan Etschel on 14.06.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Food Categories")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.primary)
                .padding()
            
            FoodListView()
                .listStyle(PlainListStyle())
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
