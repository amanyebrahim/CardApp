//
//  ContentView.swift
//  CardApp
//
//  Created by amany on 11/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
     @State var cpuCard = "card3"
     @State var playerScore = 0
     @State var cpuScore = 0
    var body: some View {
        ZStack{
            
            Image("background").ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
            
                }
                Spacer()
                Button(action: {
                    
                    let playerRandom = Int.random(in:2...14)
                    let cpuRandom = Int.random(in:2...14)
                    
                    playerCard = "card" + String(playerRandom)
                    cpuCard = "card" + String(cpuRandom)
                    
                    if playerRandom > cpuRandom{
                        playerScore += 1
                    }else if cpuRandom > playerRandom {
                        cpuScore += 1
                    }
                }, label:{
                    Image("dealbutton")
                    
                })
      
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 5.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack{
                        Text("Cpu")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 5.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    
                }
                
                Spacer()
                
                
            }
            
            
        }
        
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
