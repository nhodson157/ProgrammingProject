//
//  RewardItem.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 01/11/2022.
//

import SwiftUI

struct RewardItem: View {
    let reward: Reward
    var body: some View {
        
        GroupBox(label: Label("",systemImage: "")){
            HStack{
                Image(systemName: "gift")
                    .scaleEffect(2)
                Spacer()
                Text("\(reward.name)")
                Spacer()
            }
            HStack{
                Spacer()
                Text("Price: \(reward.price)")
                Image(systemName: "star.fill")
            }
        }
        .cornerRadius(20)
        .padding(10)
        .shadow(radius: 10)
        
    }
}

struct RewardItem_Previews: PreviewProvider {
    static var previews: some View {
        RewardItem(reward: Reward.example)
    }
}
