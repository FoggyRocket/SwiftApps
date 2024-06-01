//
//  ListItemView.swift
//  MyFisrtApp
//
//  Created by Leslie on 31/05/24.
//

import SwiftUI

struct ListItemView: View {
    let food: Food
    
    var body: some View {
        LabeledContent {
            Text(food.price,
                 format: .currency(code: Locale.current.currency?.identifier ?? ""))
        } label: {
            Text("\(food.name) \(food.title)")
        }
    }
}

#Preview {
    ListItemView(food: foods[0])
}
