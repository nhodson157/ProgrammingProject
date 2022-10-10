//
//  MainView.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 14/09/2022.
//

import SwiftUI

struct MainView: View {
    @State private var checked = false
    
    var body: some View {
            ZStack{
                VStack{
                    HStack{
                        Text(Date.getShortDate(Date())) //Displays the current date
                            .font(.title)
                            .fontWeight(.semibold)
                        Spacer()
                        Button(action: {}) { // Information button to go int top right corner of screen
                            Image(systemName: "info.circle.fill")
                                .resizable(resizingMode: .stretch)
                                .foregroundColor(Color.black)
                            .frame(width: 35.0, height: 35.0)}
                        .padding(.trailing)
                    }
                    Spacer()
                    }
                HStack{
                    VStack{
                        Button{
                            print("")
                        } label: {
                            Text("Chore 1")
                        }.padding(10)
                            .border(.secondary)
                            .foregroundColor(.black)
                        Button{
                            print("")
                        } label: {
                            Text("Chore 2")
                        }.padding(10)
                            .border(.secondary)
                            .foregroundColor(.black)
                        Button{
                            print("")
                        } label: {
                            Text("Chore 3")
                        }.padding(10)
                            .border(.secondary)
                            .foregroundColor(.black)
                        Button{
                            print("")
                        } label: {
                            Text("Chore 4")
                        }.padding(10)
                            .border(.secondary)
                            .foregroundColor(.black)

                    }
                    VStack{
                        Text("Chore 1              ")
                            .font(.largeTitle)
                            .fontWeight(.medium)
                        
                        Text("\n\nDescription about the chore, any information given by the parent user \n\n")

                        
                        HStack {
                            CheckBoxView(checked: $checked)
                            Text("Completed?")
                        }.padding()
                        
                        HStack{
                            Text("Reward: ")
                            Text("100")
                            Image(systemName: "star.fill")
                        }.padding()
                        
                        HStack{
                            Text("Due by:")
                            Text("29/11/22")
                                .padding(5)
                                .border(.primary)
                            Image(systemName: "calendar")
                        }.padding()
                        
                        HStack{
                            Text("Set by: ")
                            Text("Mother")
                        }
                    }
                    .padding()
                        .border(.primary)
                }
        }.padding(15)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            
        
    }
}

