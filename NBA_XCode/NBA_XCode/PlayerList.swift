//
//  PlayerList.swift
//  NBA_Test
//
//  Created by Luqman Abdurrohman on 12/30/19.
//  Copyright © 2019 Luqman Abdurrohman. All rights reserved.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView{
            
            List(players){
                
                player in
                NavigationLink(destination: PlayerView(player: player)){
                    PlayerRow(player: player)
                }
                
            }.navigationBarTitle(Text("NBA Finals Players"), displayMode: .large)
            
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
