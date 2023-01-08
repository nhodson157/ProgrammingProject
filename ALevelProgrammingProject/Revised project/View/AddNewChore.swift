//
//  AddNewChore.swift
//  ALevelProgrammingProject
//
//  Created by Nicholas Hodson on 07/01/2023.
//

import SwiftUI

struct AddNewChore: View {
    @EnvironmentObject var choreModel: ChoreViewModel
    //MARK: All Environment Values in one Variable
    @Environment(\.self) var env
    @Namespace var animation
    var body: some View {
        VStack(spacing: 12){
            Text("Edit Chore")
                .font(.title3.bold())
                .frame(maxWidth: .infinity)
                .overlay(alignment: .leading){
                    Button{
                        env.dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .font(.title3)
                            .foregroundColor(.black)
                    }
                }
                .overlay(alignment: .trailing){
                    Button{
                        if let editChore = choreModel.editChore{
                            env.managedObjectContext.delete(editChore)
                            try? env.managedObjectContext.save()
                            env.dismiss()
                        }
                    } label: {
                        Image(systemName: "trash")
                            .font(.title3)
                            .foregroundColor(.red)
                    }
                    .opacity(choreModel.editChore == nil ? 0: 1)
                }
            
            
            VStack(alignment: .leading, spacing: 12){
                Text("Chore Colour")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                
                //MARK: Sample Card Colours
                let colours: [String] = ["Yellow","Green","Blue","Purple","Red","Orange"]
                
                HStack(spacing: 15){
                    ForEach(colours,id:\.self){colour in
                        Circle()
                            .fill(Color(colour))
                            .frame(width: 25, height: 25)
                            .background{
                                if choreModel.choreColour == colour{
                                    Circle()
                                        .strokeBorder(.gray)
                                        .padding(-3)
                                }
                            }
                            .contentShape(Circle())
                            .onTapGesture {
                                choreModel.choreColour = colour
                            }
                    }
                }
                .padding(.top, 10)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top,30)
            
            Divider()
                .padding(.vertical,10)
            
            VStack(alignment: .leading, spacing: 12){
                Text("Chore Deadline")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Text(choreModel.choreDeadline.formatted(date: .abbreviated, time: .omitted) + ", " + choreModel.choreDeadline.formatted(date: .omitted, time: .shortened))
                    .font(.callout)
                    .fontWeight(.semibold)
                    .padding(.top, 10)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .overlay(alignment: .bottomTrailing){
                Button{
                    choreModel.showDatePicker.toggle()
                } label: {
                    Image(systemName: "calendar")
                        .foregroundColor(.black)
                }
            }
            
            Divider()
            
            VStack(alignment: .leading, spacing: 12){
                Text("Chore Title")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                TextField("", text: $choreModel.choreTitle)
                    .frame(maxWidth: .infinity)
                    .padding(.top, 10)
            }
            .padding(.top,10)
            
            Divider()
            
            //MARK: Sample Chore Types
            let choreTypes: [String] = ["Easy", "Medium", "Difficult"]
            VStack(alignment: .leading, spacing: 12){
                Text("Chore Type")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                HStack(spacing: 12){
                    ForEach(choreTypes,id: \.self){type in
                        Text(type)
                            .font(.callout)
                            .padding(.vertical,8)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(choreModel.choreType == type ? .white : .black)
                            .background{
                                if choreModel.choreType == type{
                                    Capsule()
                                        .fill(.black)
                                        .matchedGeometryEffect(id: "TYPE", in: animation)
                                } else {
                                    Capsule()
                                        .strokeBorder(.black)
                                }
                            }
                            .contentShape(Capsule())
                            .onTapGesture{
                                withAnimation{choreModel.choreType = type}
                            }
                    }
                    .padding(.top,8)
                }
                
                .padding(.vertical,10)
                
                Divider()
                
                //MARK: Save Button
                Button {
                    //MARK: If Success Closing View
                    if choreModel.addChore(context: env.managedObjectContext){
                        env.dismiss()
                    }
                } label: {
                    Text("Save Chore")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .foregroundColor(.white)
                        .background{
                            Capsule()
                                .fill(.black)
                        }
                }
                .frame(maxHeight: .infinity, alignment: .bottom)
                .padding(.bottom,10)
                .disabled(choreModel.choreTitle == "")
                .opacity(choreModel.choreTitle == "" ? 0.6 : 1)
            }
            .frame(maxHeight: .infinity,alignment: .top)
            .padding()
            .overlay{
                ZStack{
                    if choreModel.showDatePicker{
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .ignoresSafeArea()
                            .onTapGesture{
                                choreModel.showDatePicker = false
                            }
                        
                        //MARK: Disabling Past Dates
                        DatePicker.init("", selection: $choreModel.choreDeadline, in: Date.now...Date.distantFuture)
                            .datePickerStyle(.graphical)
                            .labelsHidden()
                            .padding()
                            .background(.white, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                            .padding()
                    }
                }
                .animation(.easeInOut, value: choreModel.showDatePicker)
            }
        }
        .padding()
    }
    
    struct AddNewChore_Previews: PreviewProvider {
        static var previews: some View {
            AddNewChore()
                .environmentObject(ChoreViewModel())
        }
    }
}
