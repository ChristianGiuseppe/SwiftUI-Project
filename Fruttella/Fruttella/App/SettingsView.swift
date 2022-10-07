//
//  SettingsView.swift
//  Fruttella
//
//  Created by Christian Nocerino on 07/10/22.
//

import SwiftUI

struct SettingsView: View {

    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    GroupBox(label:
                                HeaderSettingsLabelView(labelText: "Fructus", labelImage: "info.circle")){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10){
                            Image("logo").resizable().scaledToFit().frame(width: 80, height: 80).cornerRadius(9).padding(.trailing, 8)
                            
                            Text("Most fruits are naturally low in fat, sodum, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium dietary fiber,  vitamin, and much more.").font(.footnote)
                        }
                    }
                    
                    GroupBox(label:
                        HeaderSettingsLabelView(
                            labelText: "Costumization".uppercased(),
                            labelImage: "paintbrush")){
                    
                                VStack(alignment: .center, spacing: 10){
                                    Divider().padding(.vertical, 4)
                                    Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                                        .padding(.vertical, 8)
                                        .frame(minHeight: 60)
                                        .layoutPriority(1)
                                        .font(.footnote)
                                        .multilineTextAlignment(.leading)
                                    
                                    Toggle(isOn: $isOnboarding){
                                        if(isOnboarding){
                                            Text("Restarted".uppercased())
                                                .fontWeight(.bold)
                                                .foregroundColor(.green)
                                        }else{
                                            Text("Restart".uppercased())
                                        }
                                        
                                    }
                                    .padding()
                                    .background(Color(UIColor.tertiarySystemBackground))
                                    .cornerRadius(8)
                            }
                    }
                        
                    GroupBox(label:
                        HeaderSettingsLabelView(
                            labelText: "Application".uppercased(),
                            labelImage: "apps.iphone")){
                    
                                VStack(alignment: .center, spacing: 10){
                                    SettingsRowView(textInfo: "Developer", info: "Christian")
                                    SettingsRowView(textInfo: "Compatibility", info: "iOS 14")
                                    SettingsRowView(textInfo: "Github", linkLabel: "ChristianGiuseppe", linkDestination: "github.com/ChristianGiuseppe")
                                    SettingsRowView(textInfo: "Linkedin",
                                                    linkLabel: "Christian Nocerino",
                                                    linkDestination:"www.linkedin.com/in/christian-giuseppe-nocerino-3307a712a/")
                                    SettingsRowView(textInfo: "SwiftUI", info: "2.0")
                                    SettingsRowView(textInfo: "Version", info: "1.1.0")
                            }
                    }
                }.navigationBarTitle(Text("Settings"), displayMode: .large)
                    .toolbar{
                        ToolbarItem(placement: .primaryAction){
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                                     }, label: {
                                         Image(systemName: "xmark")
                                     })
                        }
                    }
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
