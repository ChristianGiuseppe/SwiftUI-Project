//
//  ContentView.swift
//  Todo App
//
//  Created by Christian Nocerino on 09/11/22.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) private var managedObjectContext
    
    @FetchRequest(entity: Todo.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \Todo.name, ascending: true)])
    
    private var todos: FetchedResults<Todo>
    
    @State private var showingAddTodoView: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                
                if todos.count > 0 {
                    List {

                       ForEach(self.todos, id: \.self) { todo in
                           HStack {
                               Circle()
                                   .frame(width: 12, height: 12, alignment: .center)
                               
                               Text(todo.name ?? "Unknown")
                                   .fontWeight(.semibold)
                               
                               Spacer()
                               
                               Text(todo.priority ?? "Unkown")
                                   .font(.footnote)
                                   .foregroundColor(Color(UIColor.systemGray2))
                                   .padding(3)
                                   .frame(minWidth: 62)
                                   .overlay(
                                       Capsule().stroke(Color(UIColor.systemGray2), lineWidth: 0.75)
                                   )
                           } //: HSTACK
                           .padding(.vertical, 10)
                       }//: FOREACH
                       .onDelete(perform: deleteTodo)
                   } //: LIST
                } else {
                    EmptyListView()
                }
            
            } //: ZSTACK
            .navigationBarTitle("Todo", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        self.showingAddTodoView.toggle()
                    }){
                     Image(systemName: "plus")
                    }
                    .sheet(isPresented: $showingAddTodoView) {
                        AddNewItemView().environment(\.managedObjectContext, self.managedObjectContext)
                    }
                        }
                
                ToolbarItem(placement: .navigationBarLeading){
                    EditButton()
                }
                    }
            
            .overlay(
                ZStack{
                    Button(action:{
                        self.showingAddTodoView.toggle()
                    }){
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .background(Circle().fill(Color("ColorBase")))
                        .frame(width: 48, height: 48, alignment: .center)
                                    }
                }//: ZSTACK
                    .padding(.bottom, 15)
                    .padding(.trailing, 15)
                , alignment: .bottomTrailing
             )
          
        }
    }
    
    private func deleteTodo(at offsets:IndexSet){
        for index in offsets {
            let todo = todos[index]
            managedObjectContext.delete(todo)
            do{
                try  managedObjectContext.save()
            }catch {
                print(error)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
