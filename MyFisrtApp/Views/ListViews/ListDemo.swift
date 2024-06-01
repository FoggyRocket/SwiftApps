//
//  ListDemo.swift
//  MyFisrtApp
//
//  Created by Leslie on 31/05/24.
//

import SwiftUI

struct ListDemo: View {
    var body: some View {
        NavigationView {
            
            List {
                
                ForEach(foods) { food in
                    
                    NavigationLink {
                        ListDetailView(food: food)
                    } label: {
                        ListItemView(food: food)
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Menu")
           
            
        }
        
    }
}

#Preview {
    ListDemo()
}
