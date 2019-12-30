//
//  ContentView.swift
//  NBA_XCode
//
//  Created by Luqman Abdurrohman on 12/30/19.
//  Copyright © 2019 Luqman Abdurrohman. All rights reserved.
//

import SwiftUI

struct PlayerView: View {
     
    var player: Player
    
    var body: some View {
        
        VStack {
            
            Image(player.team.imageName)
                .resizable()
                .frame(height: 250)
            
            Image(player.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 20)
                .offset(x: 0, y: -70)
                .padding(.bottom, -70)
            
            
            
            Text(player.name)
                .font(.system(size: 50))
                .fontWeight(.bold)
                .padding(.horizontal)
                .minimumScaleFactor(0.5)
            
            
            StatText(statName: "Age", statValue: String(player.age))
            StatText(statName: "Height", statValue: player.height)
            StatText(statName: "Weight", statValue: String(player.weight) + " lbs")

            
         
            Spacer()
            
        }.edgesIgnoringSafeArea(.top)
    }
}

struct  PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayerView(player: players[0]).previewDevice("iPhone XS Max")
            
            PlayerView(player: players[0]).previewDevice("iPhone SE")
        }
    }
}

