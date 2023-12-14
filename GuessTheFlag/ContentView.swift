//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Filippo on 13/12/23.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"]
    var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            VStack(spacing: 30) {
                Text("Tap the flag of")
                    .foregroundStyle(.white)
                Text(countries[correctAnswer])
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                
                ForEach(0 ..< 3) { number in
                    Button {
                        // flag wa tapped
                    } label: {
                        Image(countries[number].lowercased())
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray.gradient)
        .ignoresSafeArea()
            
        
        
    }
    func executeDelete() {
            print("Now deleting…")
        }
}

#Preview {
    ContentView()
}
