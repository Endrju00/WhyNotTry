//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Andrzej Kapczyński on 04/04/2024.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]

    @State private var selected = "Archery"
    
    var body: some View {
        Spacer()
        
        VStack {
            Text("Why not try...").font(.largeTitle.bold())
            
            Circle()
                .fill(colors.randomElement() ?? .blue)
                .padding()
                .overlay(
                    Image(systemName: "figure.\(selected.lowercased())")
                        .font(.system(size: 144))
                        .foregroundColor(.white)
                )
            
            Text("\(selected)!").font(.title)
        }
        
        Spacer()
        
        Button("Try again") {
            withAnimation(.easeInOut(duration: 0.3)) {
                selected = activities.randomElement() ?? "Archery"
            }
            
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    ContentView()
}
