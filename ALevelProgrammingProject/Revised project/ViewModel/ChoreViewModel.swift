//
//  ChoreViewModel.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 07/01/2023.
//

import SwiftUI
import CoreData

class ChoreViewModel: ObservableObject {
    @Published var currentTab: String = "Today"
    
    //MARK: New Chore Properties
    @Published var openEditChore: Bool = false
    @Published var choreTitle: String = ""
    @Published var choreColour: String = "Yellow"
    @Published var choreDeadline: Date = Date()
    @Published var choreType: String = "Easy"
    @Published var showDatePicker: Bool = false
    
    //MARK: Adding Chore To Core Data
    func addChore(context: NSManagedObjectContext)->Bool{
        let chore = Chore(context: context)
        chore.title = choreTitle
        chore.colour = choreColour
        chore.deadline = choreDeadline
        chore.type = choreType
        chore.isCompleted = false
        
        if let _ = try? context.save(){
            return true
        }
        return false
    }
    
    //MARK: Resetting Data
    func resetChoreData(){
        choreType = "Easy"
        choreColour = "Yellow"
        choreTitle = ""
        choreDeadline = Date()
    }
    
}
