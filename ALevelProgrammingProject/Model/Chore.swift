//
//  Chore.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 10/10/2022.
//

import Foundation

class Chore {
    let name: String  //Attributes of the class
    let dueBy: String
    let description: String
    let setBy: String
    let difficulty: Int
    let completed: Bool
    var reward: Int
    
    init(name: String, dueBy: String, description: String, setBy: String, difficulty: Int, completed: Bool) {
        self.name = name
        self.dueBy = dueBy  //Initialising the class and attributes
        self.description = description
        self.setBy = setBy
        self.difficulty = difficulty
        self.completed = completed
        self.reward = 0
    }
    
    
    func calcReward() {
        var temp = 100 * self.difficulty
        if self.name
        
        
        
        return temp
    }
    
    
    static let example = Chore(name: "Example Chore", dueBy: "11th October 2022", description: "Example chore description", setBy: "Myself", difficulty: 5, completed: false)
    //Creating an example instance of the chore class
    
}

