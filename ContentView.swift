//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Andrzej Kapczyński on 04/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Why not try...").font(.largeTitle.bold())
            
            Circle()
                .fill(.blue)
                .padding()
                .overlay(
                    Image(systemName: "figure.archery")
                        .font(.system(size: 144))
                        .foregroundColor(.white)
                )
            
            Text("Archery").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ContentView()
}
