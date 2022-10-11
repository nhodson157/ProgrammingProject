//
//  ClassTesting.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 10/10/2022.
//

import SwiftUI

struct ClassTesting: View {
    @State private var currentDate: Date = Date()
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
    }
}

struct ClassTesting_Previews: PreviewProvider {
    static var previews: some View {
        ClassTesting(chore: Chore(name: "Example Chore", dueBy: ("\(Date.getShortDate(Date())())"), description: "Example chore description", setBy: "Myself"))
            
        ClassTesting(secondary: Chore(name: "Chore 2 demo", dueBy: "No due date", description: "Does this work?", setBy: "Dumbledore"))
    }
}
