//
//  PlayerRow.swift
//  NBA_Test
//
//  Created by Luqman Abdurrohman on 12/30/19.
//  Copyright © 2019 Luqman Abdurrohman. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
    
    var player: Player
    
    var body: some View {
        
        
        HStack {
            Image(player.imageName)
                .resizable()
                .frame(width:70, height: 70)
                .clipShape(Circle())
                .background(Circle().foregroundColor(player.team.color))
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 4)
                .padding(.leading, 10)
                .padding(.trailing, 10)

                
    
            Text(player.name)
                .font(.largeTitle)
                .fontWeight(.medium)
                
                
            Spacer()
        }
        
        
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        
        VStack {
            PlayerRow(player:players[0]).previewLayout((.fixed(width: 500, height: 100)))
            PlayerRow(player:players[1]).previewLayout((.fixed(width: 500, height: 100)))
              PlayerRow(player:players[2]).previewLayout((.fixed(width: 500, height: 100)))
        }
        
    }
}
