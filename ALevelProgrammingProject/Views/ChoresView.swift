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
                    }
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
