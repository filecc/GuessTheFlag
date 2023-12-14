//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Filippo on 13/12/23.
//
/*
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack(spacing: 0) {
                /*RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 800)*/
                AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
                }
            
            VStack {
                
                Button("Button 1") { }
                        .buttonStyle(.bordered)
                    Button("Button 2", role: .destructive) { }
                        .buttonStyle(.bordered)
                    Button("Button 3") { }
                        .buttonStyle(.borderedProminent)
                    Button("Button 4", role: .destructive) { }
                        .buttonStyle(.borderedProminent)
                        .tint(.mint)
                Button {
                    print("Edit button was tapped")
                } label: {
                    Label("Edit", systemImage: "pencil")
                           .padding()
                           .foregroundStyle(.white)
                           .background(.red)
                }.buttonStyle(.bordered)
                
            }
            .padding(20)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
        }.ignoresSafeArea()
        
        
    }
    func executeDelete() {
            print("Now deleting…")
        }
}

#Preview {
    ContentView() 
}


*/
