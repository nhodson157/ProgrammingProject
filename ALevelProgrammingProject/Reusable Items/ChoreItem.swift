//
//  ChoreItem.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 01/11/2022.
//

import SwiftUI

struct ChoreItem: View {
    let chore: Chore
    var body: some View {
        
        GroupBox(label: Label("\(chore.dueBy)", systemImage: "calendar")){
            Text("\(chore.name)")
            HStack{
                Spacer()
                Text("Reward: \(chore.reward)")
                Image(systemName: "star.fill")
            }
        }.padding(10)
        .cornerRadius(20)
    }
}

struct ChoreItem_Previews: PreviewProvider {
    static var previews: some View {
        ChoreItem(chore: Chore.example)
    }
}
