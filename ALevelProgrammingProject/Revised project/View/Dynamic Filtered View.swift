//
//  Dynamic Filtered View.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 08/01/2023.
//

import SwiftUI
import CoreData

struct DynamicFilteredView<Content: View,C>: View where C: NSManagedObject {
    //MARK: Core Data Request
    @FetchRequest var request: FetchedResults<C>
    let content: (C)->Content
    
    //MARK: Building Custom ForEach which will give CoreData object to BuildView
    init(currentTab: String,@ViewBuilder content: @escaping (C)->Content){
        
        //MARK: Predicate to filter current date tasks
        let calendar = Calendar.current
        var predicate: NSPredicate!
        if currentTab == "Today"{
            let today = calendar.startOfDay(for: Date())
            let tomorrow = calendar.date(byAdding: .day, value: 1, to: today)!
            
            let filterKey = "deadline"
            
            predicate = NSPredicate(format: "\(filterKey) >= %@ AND \(filterKey) < %@ AND isCompleted == %i", argumentArray: [today,tomorrow,0])
            
        } else if currentTab == "Upcoming" {
            let today = calendar.startOfDay(for: calendar.date(byAdding: .day, value: 1, to: Date())!)
            let tomorrow = Date.distantFuture
            
            let filterKey = "deadline"
            
            predicate = NSPredicate(format: "\(filterKey) >= %@ AND \(filterKey) < %@ AND isCompleted == %i", argumentArray: [today,tomorrow,0])
            
        }else if currentTab == "Failed" {
            let today = calendar.startOfDay(for: Date())
            let past = Date.distantPast
            
            let filterKey = "deadline"
            
            predicate = NSPredicate(format: "\(filterKey) >= %@ AND \(filterKey) < %@ AND isCompleted == %i", argumentArray: [past,today,0])
        }
        else{
            predicate = NSPredicate(format: "isCompleted == %i", argumentArray: [1])
        }
        
        _request = FetchRequest(entity: C.entity(), sortDescriptors: [.init(keyPath: \Chore.deadline, ascending: false)], predicate: predicate)
        self.content = content
    }
    
    var body: some View {
        
        Group{
            if request.isEmpty{
                Text("No Chores Found!!!")
                    .font(.system(size: 16))
                    .fontWeight(.light)
                    .offset(y: 100)
            }
            else{
                
                ForEach(request,id: \.objectID){object in
                    self.content(object)
                }
            }
        }
    }
}
