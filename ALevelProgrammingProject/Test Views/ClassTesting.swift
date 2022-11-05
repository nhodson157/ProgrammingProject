//
//  ClassTesting.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 10/10/2022.
//

import SwiftUI

struct ClassTesting: View {
    @State private var currentDate: Date = Date()
    @State private var checked = false
    let chore: Chore
    let secondary: Chore
    var body: some View {
        
        VStack{
            Text("\(chore.name)")
            Text("\(chore.dueBy)")
            Text("\(chore.description)")
            Text("\(chore.setBy)")
            
            GroupBox(label: Label("\(chore.dueBy)", systemImage: "calendar")){
                Text("\(chore.name)")
                HStack{
                    Spacer()
                    Text("Reward: \(chore.reward)")
                    Image(systemName: "star.fill")
                }
            }.padding(10)
            .cornerRadius(20)
            
            ChoreItem(chore: secondary)
            ChoreItem(chore: chore)
        }
        
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
        
        VStack{
            MainMenuItem(chore: chore)
            MainMenuItem(chore: secondary)
        }
        
    }
}

struct ClassTesting_Previews: PreviewProvider {
    static var previews: some View {
        ClassTesting(chore: Chore.example, secondary: Chore(name: "Second", dueBy: "N/A", description: "Description", setBy: "Anonymous", reward: 50, completed: true))
    }
}
