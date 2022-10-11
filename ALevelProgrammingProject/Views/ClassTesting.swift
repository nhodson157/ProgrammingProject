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
                    Text("Reward: 100")
                    Image(systemName: "star.fill")
                }
            }.padding(10)
            .cornerRadius(20)
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
        
    }
}

struct ClassTesting_Previews: PreviewProvider {
    static var previews: some View {
        ClassTesting(chore: Chore(name: "Example Chore", dueBy: ("\(Date.getShortDate(Date())())"), description: "Example chore description", setBy: "Myself", reward: 100)
                     secondary: Chore(name: "Second", dueBy: "N/A", description: "AAA", setBy: "AAA", reward: 50)
        
        )
    }
}
