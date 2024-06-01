//
//  ListDetailView.swift
//  MyFisrtApp
//
//  Created by Leslie on 31/05/24.
//

import SwiftUI

struct ListDetailView: View {
    
       let food: Food
       
    var body: some View {
        List {
            
            Section {
                LabeledContent("Icon", value: food.name)
                LabeledContent("Name", value: food.title)
                LabeledContent {
                    Text(food.price,
                         format: .currency(code: Locale.current.currency?.identifier ?? ""))
                } label: {
                    Text("Price")
                }
            }
            
            Section("Description") {
                Text(food.description)
            }
            
        }
        .navigationTitle("Item")
    }
}

#Preview {
    ListDetailView(food: foods[0])
}
