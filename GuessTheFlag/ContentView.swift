//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Filippo on 13/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack(spacing: 0) {
                /*RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 800)*/
                AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
                }
            
            VStack {
                
                HStack{
                    HStack (spacing: 20){
                        Rectangle()
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        Rectangle()
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        Rectangle()
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    }
                }
                HStack{
                    HStack (spacing: 20){
                        Rectangle()
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        Rectangle()
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        Rectangle()
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    }
                }
                HStack{
                    HStack (spacing: 20){
                        Rectangle()
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        Rectangle()
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        Rectangle()
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    }
                }
                
            }
            .padding(20)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
        }.ignoresSafeArea()
        
        
    }
}

#Preview {
    ContentView()
}
