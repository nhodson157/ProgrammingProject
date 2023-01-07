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
                
                //MARK: Task View
                //Later will come
            }
            .padding()
        }
        .overlay(alignment: .bottom){
            //MARK: Add Button
            Button{
                choreModel.openEditChore.toggle()
            } label: {
                Label{
                    Text("Add Task")
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
    
    //MARK: Custom Segmented Bar
    @ViewBuilder
    func CustomSegmentedBar()-> some View{
        let tabs = ["Today","Upcoming","Tasks Done"]
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
