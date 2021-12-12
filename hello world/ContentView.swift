//
//  ContentView.swift
//  hello world
//
//  Created by Nima Pourjafar on 2021-12-11.
//

import SwiftUI

struct ContentView: View {

    @State var playerCard = "card5"
    @State var cpuCard = "card9"
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
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card"+String(cpuRand)
                    
                    if(playerRand>cpuRand){
                        playerScore+=1
                    }
                    else{
                        cpuScore+=1
                    }
                    
                }) {
                    Text("Deal")
                }
                .padding(.all)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player1")
                        Text(String(playerScore))
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                        Text(String(cpuScore))
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
