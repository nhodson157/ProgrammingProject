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
    @Published var choreReward: Int64 = 0
    
    //MARK: Editing Existing Chore Data
    @Published var editChore: Chore?
    
    //MARK: Adding Chore To Core Data
    func addChore(context: NSManagedObjectContext)->Bool{
        //MARK: Updating Existing Data In Core Data
        var chore: Chore!
        if let editChore = editChore {
            chore = editChore
        } else {
            chore = Chore(context: context)
        }
        chore.title = choreTitle
        chore.colour = choreColour
        chore.deadline = choreDeadline
        chore.type = choreType
        chore.isCompleted = false
        chore.reward = choreReward
        
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
        editChore = nil
        choreReward = 0
    }
    
    //MARK: If Edit Chore Is Available Then Setting Existing Data
    func setupChore(){
        if let editChore = editChore {
            choreType = editChore.type ?? "Easy"
            choreColour = editChore.colour ?? "Yellow"
            choreTitle = editChore.title ?? ""
            choreDeadline = editChore.deadline ?? Date()
            choreReward = editChore.reward ?? 0
        }
    }
    
}
