//
//  Reward.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 01/11/2022.
//

import Foundation

class Reward {
    let name: String  //Attributes of the class
    let description: String
    let price: Int
    
    init(name: String, description: String, price: Int) {
        self.name = name //Initialising the class and attributes
        self.description = description
        self.price = price
    }
    
    
    
    static let example = Reward(name: "Example reward", description: "Big prize", price: 600)
    //Creating an example instance of the chore class
    
}
