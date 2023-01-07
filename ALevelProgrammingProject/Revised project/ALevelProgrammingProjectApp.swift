//
//  ALevelProgrammingProjectApp.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 13/09/2022.
//

import SwiftUI

@main
struct ALevelProgrammingProject: App {
    var body: some Scene {
        WindowGroup{
            NavigationView{
                Home()
                    .navigationBarTitle("Task Manager")
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
