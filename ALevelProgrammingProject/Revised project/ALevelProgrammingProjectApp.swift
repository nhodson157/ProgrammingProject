//
//  ALevelProgrammingProjectApp.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 13/09/2022.
//

import SwiftUI

@main
struct ALevelProgrammingProject: App {
    let persistanceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup{
            NavigationView{
                ContentView()
                    .environment(\.managedObjectContext, persistanceController.container.viewContext)
            }
        }
    }
}

