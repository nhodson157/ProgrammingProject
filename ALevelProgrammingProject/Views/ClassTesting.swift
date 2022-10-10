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
    var body: some View {
        
        VStack{
            Text("\(chore.name)")
            Text("\(chore.dueBy)")
            Text("\(chore.description)")
            Text("\(chore.setBy)")
        }
    }
}

struct ClassTesting_Previews: PreviewProvider {
    static var previews: some View {
        ClassTesting(chore: Chore(name: "Example Chore", dueBy: Date(), description: "Example chore description", setBy: "Myself"))
    }
}
