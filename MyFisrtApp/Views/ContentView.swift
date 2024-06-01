//
//  ContentView.swift
//  MyFisrtApp
//
//  Created by Foggyrocket on 25/05/24.
//

import SwiftUI




struct ContentView: View {
    let menuItems: [MenuItems] = [
        MenuItems(name: "Emoji App", iconName: "😀", color: .green, destination: AnyView(EmojiDemo())),
        MenuItems(name: "List App", iconName: "🧾", color: .indigo, destination: AnyView(ListDemo()))
    ]

    var body: some View{
        NavigationStack{
            List {
                Section("Menu"){
                    ForEach(menuItems,id:\.name){item in NavigationLink(destination: item.destination){
                        HStack {
                        Text(item.iconName)
                        Text(item.name)
                    }.foregroundStyle(item.color)}
                        
                    }
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}

struct MenuItems: Identifiable {
        let id = UUID()
        let  name: String
        let  iconName: String
        let color:Color
        let destination: AnyView
    }
