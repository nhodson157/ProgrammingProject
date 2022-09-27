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
                    GroupBox(label: Label("Reward 1", systemImage: "gift")){
                        Text("Reward 1")
                    }
                    .cornerRadius(20)
                    GroupBox(label: Label("Reward 2", systemImage: "gift")){
                        Text("Reward 2")
                    }
                    .cornerRadius(20)
                    GroupBox(label: Label("Reward 3", systemImage: "gift")){
                        Text("Reward 3")
                    }
                    .cornerRadius(20)
                    GroupBox(label: Label("Reward 4", systemImage: "gift")){
                        Text("Reward 4")
                    }
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
