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
                        GroupBox(label: Label("Chore 1", systemImage: "list.number")){
                            Text("Chore 1")
                        }
                        .cornerRadius(20)
                        GroupBox(label: Label("Chore 2", systemImage: "list.number")){
                            Text("Chore 2")
                        }
                        .cornerRadius(20)
                        GroupBox(label: Label("Chore 3", systemImage: "list.number")){
                            Text("Chore 3")
                        }
                        .cornerRadius(20)
                        GroupBox(label: Label("Chore 4", systemImage: "list.number")){
                            Text("Chore 4")
                        }
                        .cornerRadius(20)
                        GroupBox(label: Label("Chore 5", systemImage: "list.number")){
                            Text("Chore 5")
                        }
                        .cornerRadius(20)
                        GroupBox(label: Label("Chore 6", systemImage: "list.number")){
                            Text("Chore 6")
                        }
                        .cornerRadius(20)
                        GroupBox(label: Label("Chore 7", systemImage: "list.number")){
                            Text("Chore 7")
                        }
                        .cornerRadius(20)
                    }.padding()
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
