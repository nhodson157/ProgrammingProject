//
//  ChoresView.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 14/09/2022.
//

import SwiftUI

struct ChoresView: View {
    var body: some View {
            ZStack{
                VStack{
                    HStack{
                        Text("Chores")
                            .font(.title)
                            .fontWeight(.semibold)
                            .padding(.leading)
                        Spacer()
                        Button(action: {}) {
                            Image(systemName: "info.circle.fill")
                                .resizable(resizingMode: .stretch)
                                .foregroundColor(Color.black)
                            .frame(width: 35.0, height: 35.0)}
                        .padding(.trailing)
                    }
                    Spacer()
                    
                    ScrollView{
                        GroupBox(label: Label("26/5/22", systemImage: "calendar")){
                            Text("Chore 1")
                            HStack{
                                Spacer()
                                Text("Reward: 100")
                                Image(systemName: "star.fill")
                            }
                        }
                        .cornerRadius(20)
                        .padding(5)
                        .shadow(radius: 10)
                        
                        
                        GroupBox(label: Label("26/5/22", systemImage: "calendar")){
                            Text("Chore 2")
                            HStack{
                                Spacer()
                                Text("Reward: 40")
                                Image(systemName: "star.fill")
                            }
                        }
                        .cornerRadius(20)
                        .padding(5)
                        .shadow(radius: 10)
                        
                        
                        GroupBox(label: Label("27/5/22", systemImage: "calendar")){
                            Text("Chore 3")
                            HStack{
                                Spacer()
                                Text("Reward: 80")
                                Image(systemName: "star.fill")
                            }
                        }
                        .cornerRadius(20)
                        .padding(5)
                        .shadow(radius: 10)
                        
                        
                        GroupBox(label: Label("28/5/22", systemImage: "calendar")){
                            Text("Chore 4")
                            HStack{
                                Spacer()
                                Text("Reward: 120")
                                Image(systemName: "star.fill")
                            }
                        }.cornerRadius(20)
                            .padding(5)
                        .shadow(radius: 10)
                        
                        
                    }
                    .border(.secondary)
                }
                .padding(15)
            }
        }
}

struct ChoresView_Previews: PreviewProvider {
    static var previews: some View {
        ChoresView()
    }
}
