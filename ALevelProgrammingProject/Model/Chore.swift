//
//  Chore.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 10/10/2022.
//

import Foundation

class Chore {
    let name: String
    let dueBy: String
    let description: String
    let setBy: String
    
    init(name: String, dueBy: String, description: String, setBy: String) {
        self.name = name
        self.dueBy = dueBy
        self.description = description
        self.setBy = setBy
    }
    
    
    static let example = Chore(name: "Example Chore", dueBy: "11th October 2022", description: "Example chore description", setBy: "Myself")
    
}

