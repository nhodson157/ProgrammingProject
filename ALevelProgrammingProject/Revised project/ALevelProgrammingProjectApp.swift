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
                Home()
                    .environment(\.managedObjectContext, persistanceController.container.viewContext)
                    .navigationBarTitle("Chore Manager")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct ALevelProgrammingProject_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
