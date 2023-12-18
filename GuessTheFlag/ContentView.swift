//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Filippo on 13/12/23.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "US"]
    @State private var correctAnswer = Int.random(in: 0 ... 2)
    @State private var isAlertVisible : Bool = false
    @State private var score : Int = 0
    @State private var tappedFlag : String = ""
    @State private var isCorrect : Bool = false
    @State private var randomFlags : Array = [1, 2, 3]
    
    var body: some View {
        ZStack {
            VStack(spacing: 30) {
                Text("Your score: \(score)")
                    .font(.title)
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
                    isCorrect ?  Text("You're right! This is the flag of \(tappedFlag)") :  Text("Nope! You tapped: \(tappedFlag).")
                    
                   
                }
               
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray.gradient)
        .ignoresSafeArea()
            
        
        
    }
    func aFlagWasTapped(correctFlag: String) {
        if(correctFlag == tappedFlag){
            isCorrect = true
            score += 1
        } else {
            isCorrect = false
            score = 0
        }
        let countriesArrayLenght : Int = countries.count
        var otherFlags : Array<Int> = []
        var counter : Int = 3
        while (counter > 0) {
            let randomFlag = Int.random(in: 0 ..< countriesArrayLenght)
            if !otherFlags.contains(randomFlag){
                otherFlags.append(randomFlag)
                counter -= 1
            }
        }
        print(otherFlags)
        randomFlags = otherFlags

        correctAnswer = otherFlags[Int.random(in: 0 ... 2)]
        
          
        }
}

#Preview {
    ContentView()
}
