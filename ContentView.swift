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
    
    @State private var id = 1
    
    var body: some View {
        VStack {
            Text("Why not try...").font(.largeTitle.bold())
                .padding()
            Spacer()
            VStack {
                
                
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
            .id(id)
            .transition(.slide)
            
            
            Spacer()
            
            Button("Try again") {
                withAnimation(.easeInOut(duration: 0.3)) {
                    selected = activities.randomElement() ?? "Archery"
                    id += 1
                }
                
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
