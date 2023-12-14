//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Filippo on 13/12/23.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"]
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var isAlertVisible : Bool = false
    @State private var score : Int = 0
    @State private var tappedFlag : String = ""
    @State private var isCorrect : Bool = false
    @State private var randomFlags : Array = [2, 5, 9]
    
    var body: some View {
        ZStack {
            VStack(spacing: 30) {
                Text("Tap the flag of")
                    .foregroundStyle(.white)
                Text(countries[correctAnswer])
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                
                ForEach(randomFlags, id: \.self) { flag in
                    Button {
                        isAlertVisible = true
                        tappedFlag = countries[flag]
                        aFlagWasTapped(correctFlag: countries[correctAnswer])
                    } label: {
                        Image(countries[flag].lowercased())
                    }
                }
            }.alert("Alert", isPresented: $isAlertVisible, actions: {
                
            }, message: {
                VStack {
                    isCorrect ?  Text("You're right! This is the flag of \(countries[correctAnswer])") :  Text("Nope! You tapped: \(tappedFlag).")
                    
                   
                }
               
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray.gradient)
        .ignoresSafeArea()
            
        
        
    }
    func aFlagWasTapped(correctFlag: String) {
        let countriesArrayLenght : Int = countries.count
        let randomFlag1 = Int.random(in: 0 ..< countriesArrayLenght - 1)
        let randomFlag2 = Int.random(in: 0 ..< countriesArrayLenght - 1)
        let randomFlag3 = Int.random(in: 0 ..< countriesArrayLenght - 1)
        let randomArray = [randomFlag1, randomFlag2, randomFlag3]
        randomFlags = randomArray
        correctAnswer = randomFlags[Int.random(in: 0 ..< 3)]
        if(correctFlag == tappedFlag){
            isCorrect = true
        } else {
            isCorrect = false
        }
          
        }
}

#Preview {
    ContentView()
}
