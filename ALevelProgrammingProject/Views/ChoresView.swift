//
//  ChoresView.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 14/09/2022.
//

import SwiftUI

struct ChoresView: View {
    var body: some View {
        NavigationView {
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
                }
            }
        }
    }
}

struct ChoresView_Previews: PreviewProvider {
    static var previews: some View {
        ChoresView()
    }
}
