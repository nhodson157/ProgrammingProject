//
//  Chore.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 10/10/2022.
//

import Foundation

class Chore {
    let name: String
    let dueBy: Date
    let description: String
    let setBy: String
    
    init(name: String, dueBy: Date, description: String, setBy: String) {
        self.name = name
        self.dueBy = dueBy
        self.description = description
        self.setBy = setBy
    }
    
    
    static let example = Chore(name: "Example Chore", dueBy: Date(), description: "Example chore description", setBy: "Myself")
    
}

