//
//  OpeningView.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 13/09/2022.
//

import SwiftUI

struct OpeningView: View {
    var body: some View {
        ZStack{
            Rectangle()
            Text("Hello World!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningView()
    }
}
