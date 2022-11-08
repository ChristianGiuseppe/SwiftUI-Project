//
//  NewTaskItemView.swift
//  Devnote
//
//  Created by Christian Nocerino on 08/11/22.
//

import SwiftUI

struct NewTaskItemView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State var task: String = ""
    @Binding var isShowing : Bool
    
    private var isButtonDisabled: Bool {
        task.isEmpty
    }
    
    func addItem(){
        withAnimation{
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            newItem.task = task
            newItem.completion = false
            newItem.id = UUID()
            do{
                try viewContext.save()
                
            }catch{
                let nsError = error as Error
                fatalError("Unresolved error \(nsError)")
            }
            
            task = ""
            hideKeyboard()
            isShowing = false
        }
    }
    var body: some View {
        VStack{
            Spacer()
            VStack(spacing: 16){
                TextField("New Task", text: $task)
                    .foregroundColor(Color.pink)
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                    .padding()
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(10)
                
                
                Button(action: {
                    addItem()
                }, label: {
                    Spacer()
                    Text("Save")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                    Spacer()
                })
                .disabled(isButtonDisabled)
                .padding()
                .foregroundColor(.white)
                .background(isButtonDisabled ? Color.gray : Color.pink)
                .cornerRadius(10)
                .font(.headline)
            }.padding(.horizontal)
                .padding(.vertical, 20)
                .background(Color.white)
                .cornerRadius(16)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 24)
                .frame(maxWidth: 640)
        }.padding()
    }
    
}

struct NewTaskItemView_Previews: PreviewProvider {
    static var previews: some View {
        var binding: Binding = .constant(false)
        NewTaskItemView(isShowing: binding)
            .background(Color.gray.edgesIgnoringSafeArea(.all))
    }
}
