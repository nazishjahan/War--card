//
//  ContentView.swift
//  war_challenge
//
//  Created by NAZISH ZOHAIB on 10/12/2021.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card12"
    @State var compCard = "card9"
    @State var cpuScore = 0
    @State var playerScore = 0
    
    var body: some View {
     
      
        VStack{
            
         ZStack{
            Image("background").ignoresSafeArea()
              
            VStack{
                Spacer()
                Image("logo")
               // Spacer()
                
                 // cards stack
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(compCard)
                    Spacer()
                   }
               // Spacer()
                // Deal Button
                
                Button(action: {
                    //generate random num btw 2...14
                    var playerRand = Int.random(in: 2...14)
                    var cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card"+String(playerRand)
                    compCard = "card"+String(cpuRand)
                    
                    // Update the score
                    if playerRand<cpuRand{
                    cpuScore += 1
                    }else if playerRand>cpuRand {
                    playerScore += 1
                    }
                    else{
                        cpuScore += 0
                        playerScore += 0
                    }
                    
                }, label: {
                        Image("dealbutton")
                    })
               
                // Score stacks
                HStack{
                 // Spacer()
                        //1st Score stack
                        VStack{
                            Text("Player").font(.headline).padding(.bottom)
                            Text(String(playerScore)).font(.subheadline)
                        }
                   //Spacer()
                        // 2nd score stack
                        VStack{
                            Text("CPU").font(.headline).padding(.bottom)
                           Text(String(cpuScore)).font(.subheadline)
                        }
                    }.foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
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
