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
            TabView{
                ChoresView()
                    .tabItem{
                        Label("Chores", systemImage: "list.number")
                    }
                MainView()
                    .tabItem{
                        Label("Main Menu", systemImage: "house")
                    }
                RewardsView()
                    .tabItem{
                        Label("Rewards", systemImage: "gift")
                    }
                
            }
        }
    }
}
//
