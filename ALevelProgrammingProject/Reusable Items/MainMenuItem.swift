//
//  MainMenuItem.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 01/11/2022.
//

import SwiftUI

struct MainMenuItem: View {
    @State private var checked = false
    let chore: Chore
    var body: some View {
        
        VStack{
            Text("\(chore.name)")
                .font(.largeTitle)
                .fontWeight(.medium)
            
            Text("\(chore.description)")

            
            HStack {
                CheckBoxView(checked: $checked)
                Text("Completed?")
            }.padding()
            
            HStack{
                Text("Reward: ")
                Text("\(chore.reward)")
                Image(systemName: "star.fill")
            }.padding()
            
            HStack{
                Text("Due by:")
                Text("\(chore.dueBy)")
                    .padding(5)
                    .border(.primary)
                Image(systemName: "calendar")
            }.padding()
            
            HStack{
                Text("Set by: ")
                Text("\(chore.setBy)")
            }
        }
        .padding()
            .border(.primary)
        
    }
}

struct MainMenuItem_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuItem(chore: Chore.example)
    }
}
