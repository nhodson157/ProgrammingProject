//
//  Home.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 07/01/2023.
//

import SwiftUI

struct Home: View {
    @StateObject var choreModel: ChoreViewModel = .init()
    //MARK: Matched Geometry Namespace
    @Namespace var animation
    
    //MARK: Fetching Chore
    @FetchRequest(entity: Chore.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \Chore.deadline, ascending: false)], predicate: nil, animation: .easeInOut) var chore: FetchedResults<Chore>
    
    //MARK: Environment Values
    @Environment(\.self) var env
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Welcome Back")
                        .font(.callout)
                    Text("Here's Update Today.")
                        .font(.title2.bold())
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.vertical)
                
                CustomSegmentedBar()
                    .padding(.top,5)
                
                //MARK: Chore View
                ChoreView()
            }
            .padding()
        }
        .overlay(alignment: .bottom){
            //MARK: Add Button
            Button{
                choreModel.openEditChore.toggle()
            } label: {
                Label{
                    Text("Add Chore")
                        .font(.callout)
                        .fontWeight(.semibold)
                    
                }icon: {
                    Image(systemName: "plus.app.fill")
                }
                .foregroundColor(.white)
                .padding(.vertical,12)
                .padding(.horizontal)
                .background(.black, in: Capsule())
            }
            //MARK: Linear Gradient BG
            .padding(.top,10)
            .frame(maxWidth: .infinity)
            .background{
                LinearGradient(colors: [.white.opacity(0.05),.white.opacity(0.4),.white.opacity(0.7),.white], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
            }
        }
        .fullScreenCover(isPresented: $choreModel.openEditChore) {
            choreModel.resetChoreData()
        } content: {
            AddNewChore()
                .environmentObject(choreModel)
        }
    }
    
    //MARK: ChoreView
    @ViewBuilder
    func ChoreView()->some View{
        LazyVStack(spacing: 20){
            //MARK: Custom Filtered Request View
            DynamicFilteredView(currentTab: choreModel.currentTab) { (chore: Chore) in
                ChoreRowView(chore: chore)
            }
        }
        .padding(.top, 20)
    }
    
    //MARK: Chore Row View
    @ViewBuilder
    func ChoreRowView(chore: Chore)->some View{
        VStack(alignment: .leading, spacing: 10){
            HStack{
                Text(chore.type ?? "")
                    .font(.callout)
                    .padding(.vertical,5)
                    .padding(.horizontal)
                    .background{
                        Capsule()
                            .fill(.gray.opacity(0.3))
                    }
                
                Spacer()
                
                //MARK: Edit Button Only For Non Completed Chores
                if !chore.isCompleted && choreModel.currentTab != "Failed"{
                    Button{
                        choreModel.editChore = chore
                        choreModel.openEditChore = true
                        choreModel.setupChore()
                    } label: {
                        Image(systemName: "square.and.pencil")
                            .foregroundColor(.black)
                    }
                }
            }
            Text(chore.title ?? "")
                .font(.title2.bold())
                .foregroundColor(.black)
                .padding(.vertical,10)
            
            HStack(alignment: .bottom, spacing: 0){
                VStack(alignment: .leading, spacing: 10){
                    Label {
                        Text((chore.deadline ?? Date()).formatted(date: .long, time: .omitted))
                    } icon: {
                        Image(systemName: "calendar")
                    }
                    .font(.caption)
                    
                    Label {
                        Text((chore.deadline ?? Date()).formatted(date: .omitted, time: .shortened))
                    } icon: {
                        Image(systemName: "clock")
                    }
                    .font(.caption)
                    
                    Label {
                        Text("\(chore.reward)")
                    } icon: {
                        Image(systemName: "star.fill")
                            .scaleEffect(0.9)
                    }
                    .font(.caption)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                if !chore.isCompleted && choreModel.currentTab != "Failed"{
                    Button{
                        //MARK: Updating Core Data
                        chore.isCompleted.toggle()
                        try? env.managedObjectContext.save()
                    }label: {
                        Circle()
                            .strokeBorder(.black,lineWidth: 1.5)
                            .frame(width: 25, height: 25, alignment: .trailing)
                            .contentShape(Circle())
                            
                    }
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background{
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .fill(Color(chore.colour ?? "Yellow"))
        }
    }
    
    //MARK: Custom Segmented Bar
    @ViewBuilder
    func CustomSegmentedBar()-> some View{
        let tabs = ["Today","Upcoming","Chores Done","Failed"]
        HStack(spacing:10){
            ForEach(tabs,id: \.self){tab in
                Text(tab)
                    .font(.callout)
                    .fontWeight(.semibold)
                    .scaleEffect(0.9)
                    .foregroundColor(choreModel.currentTab == tab ? .white : .black)
                    .padding(.vertical,6)
                    .frame(maxWidth: .infinity)
                    .background{
                        if choreModel.currentTab == tab{
                            Capsule()
                                .fill(.black)
                                .matchedGeometryEffect(id: "TAB", in: animation)
                        }
                    }
                    .contentShape(Capsule())
                    .onTapGesture {
                        withAnimation{choreModel.currentTab = tab}
                    }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
