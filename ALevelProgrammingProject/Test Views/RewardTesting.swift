//
//  RewardTesting.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 01/11/2022.
//

import SwiftUI

struct RewardTesting: View {
    let reward: Reward
    let secondary: Reward
    var body: some View {
        
        VStack{
            RewardItem(reward: reward)
            RewardItem(reward: secondary)
        }
        
    }
}

struct RewardTesting_Previews: PreviewProvider {
    static var previews: some View {
        RewardTesting(reward: Reward.example, secondary: Reward(name: "Secondary reward", description: "Description 2", price: 450))
    }
}
