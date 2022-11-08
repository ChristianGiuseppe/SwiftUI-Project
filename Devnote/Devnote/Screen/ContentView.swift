//
//  ContentView.swift
//  Devnote
//
//  Created by Christian Nocerino on 29/10/22.
//

import SwiftUI

struct ContentView: View {
    
   
    // MARK: Property
    @State var task: String = ""
    @State private var showNewTaskItem : Bool = false
    @Environment(\.managedObjectContext) private var viewContext
    
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(
            keyPath: \Item.timestamp, ascending: true
        )],
        animation: .default
    )
    
    
    private var items: FetchedResults<Item>
    
    
    
    var body: some View {
        NavigationView{
            ZStack {
                VStack {
                    HStack{
                        Text("Devnote")
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.horizontal)
                            
                        Spacer()
                        
                        EditButton().font(.system(size: 16, weight: .bold, design: .rounded))
                            .padding(.horizontal, 10)
                            .frame(minWidth: 70, minHeight: 24)
                            .background(Capsule().stroke(Color.white, lineWidth: 2))
                            .foregroundColor(.white)
                            .padding()
                        
                    }
                    
                    Spacer(minLength: 80)
                    
                    Button(action:{
                        showNewTaskItem = true
                    }, label: {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                        Text("New Task")  .font(.system(size: 30, weight: .bold, design: .rounded))
                    }).foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 15)
                        .background(backgroundGradient.clipShape(Capsule()))
                        
           
                    List{
                        ForEach(items, id: \.self){
                            item in
                            ListRowItemView(item: item)
                        }
                    }
                    .listStyle(.insetGrouped)
                    .shadow( color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 12)
                    .padding(.vertical, 0)
                        .frame(maxWidth: 640)
                        .scrollContentBackground(.hidden)
                }
                
                if showNewTaskItem{
                    BlankView()
                        .onTapGesture {
                            showNewTaskItem = false
                        }
                    NewTaskItemView(isShowing: $showNewTaskItem)
                }
            }
            .onAppear{
                UITableView.appearance().backgroundColor = .clear
            }
            .background(BackgroundImageView())
        .background(backgroundGradient.ignoresSafeArea(.all))
    }.navigationViewStyle(StackNavigationViewStyle())
}
    


    func deleteItems() {
      withAnimation {
        do {
          try viewContext.save()
        } catch {
          let nsError = error as NSError
          fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
      }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
