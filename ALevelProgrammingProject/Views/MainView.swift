//
//  MainView.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 14/09/2022.
//

import SwiftUI

struct MainView: View {
    @State private var randomText: String = ""
    
    var body: some View {
            ZStack{
                VStack{
                    HStack{
                        Text(Date.now, format: .dateTime.day().month().year())
                            .font(.title)
                            .fontWeight(.semibold)
                        Spacer()
                        Button(action: {}) {
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
                        
                    }.padding()
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

