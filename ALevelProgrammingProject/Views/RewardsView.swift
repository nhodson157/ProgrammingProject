//
//  RewardsView.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 14/09/2022.
//

import SwiftUI

struct RewardsView: View {
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text("Rewards")
                        .font(.title)
                        .fontWeight(.semibold)
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "info.circle.fill")
                            .resizable(resizingMode: .stretch)
                            .foregroundColor(Color.black)
                        .frame(width: 35.0, height: 35.0)}
                    .padding(.trailing)
                }.padding()
                
                HStack{
                    Spacer()
                    Text("Your Balance: ")
                        .font(.body)
                        .fontWeight(.medium)
                    Text("215")
                        .font(.title)
                    Image(systemName: "star.fill")
                }.padding(20)
                
                ScrollView{
                    GroupBox(label: Label("",systemImage: "")){
                        HStack{
                            Image(systemName: "gift")
                                .scaleEffect(2)
                            Spacer()
                            Text("Reward 1")
                            Spacer()
                        }
                        HStack{
                            Spacer()
                            Text("Price: 250")
                            Image(systemName: "star.fill")
                        }
                    }
                    .cornerRadius(20)
                    .padding(10)
                    .shadow(radius: 10)
                    
                    
                    GroupBox(label: Label("",systemImage: "")){
                        HStack{
                            Image(systemName: "gift")
                                .scaleEffect(2)
                            Spacer()
                            Text("Reward 2")
                            Spacer()
                        }
                        HStack{
                            Spacer()
                            Text("Price: 115")
                            Image(systemName: "star.fill")
                        }
                    }
                    .cornerRadius(20)
                    .padding(10)
                    .shadow(radius: 10)
                    
                    
                    GroupBox(label: Label("",systemImage: "")){
                        HStack{
                            Image(systemName: "gift")
                                .scaleEffect(2)
                            Spacer()
                            Text("Reward 3")
                            Spacer()
                        }
                        HStack{
                            Spacer()
                            Text("Price: 450")
                            Image(systemName: "star.fill")
                        }
                    }
                    .cornerRadius(20)
                    .padding(10)
                    .shadow(radius: 10)
                    
                    
                    GroupBox(label: Label("",systemImage: "")){
                        HStack{
                            Image(systemName: "gift")
                                .scaleEffect(2)
                            Spacer()
                            Text("Reward 4")
                            Spacer()
                        }
                        HStack{
                            Spacer()
                            Text("Price: 1500")
                            Image(systemName: "star.fill")
                        }
                    }.cornerRadius(20)
                        .padding(10)
                        .shadow(radius: 10)
                    
                }.border(.secondary)
                .padding(.horizontal, 10)
                    
                
                Spacer()
                
                Button(action: {}) {
                    Text("Redeem Reward")
                        .font(.title)
                        .foregroundColor(Color.black)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 1)
                        )
                }
                Spacer()

                
            }
        }
    }
}

struct RewardsView_Previews: PreviewProvider {
    static var previews: some View {
        RewardsView()
    }
}
