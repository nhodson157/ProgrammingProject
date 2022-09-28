//
//  ALevelProgrammingProjectApp.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 13/09/2022.
//

import SwiftUI

@main
struct ALevelProgrammingProjectApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{ //Creating a tab bar that will be present across views
                ChoresView() //Creating a tab for the chores screen
                    .tabItem{
                        Label("Chores", systemImage: "list.number")
                    }
                MainView() // Creating a tab for the main screen
                    .tabItem{
                        Label("Main Menu", systemImage: "house")
                    }
                RewardsView() //Creating a tab for rewards screen
                    .tabItem{
                        Label("Rewards", systemImage: "gift")
                    }
                
            }
        }
    }
}
//
