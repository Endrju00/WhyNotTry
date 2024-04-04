//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Andrzej Kapczyński on 04/04/2024.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]

    @State var selected = "Archery"
    
    var body: some View {
        VStack {
            Text("Why not try...").font(.largeTitle.bold())
            
            Circle()
                .fill(.blue)
                .padding()
                .overlay(
                    Image(systemName: "figure.\(selected.lowercased())")
                        .font(.system(size: 144))
                        .foregroundColor(.white)
                )
            
            Text("\(selected)!").font(.title)
            
            Button("Try again") {
                selected = activities.randomElement() ?? "Archery"
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
