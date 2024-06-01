//
//  EmojiDemo.swift
//  MyFisrtApp
//
//  Created by Leslie on 31/05/24.
//

import SwiftUI

struct EmojiDemo: View {
    @State var selection: Emoji = .😁
    var body: some View {
        NavigationView{
            VStack{
                Text(selection.rawValue)
                    .font(.system(size:150))
                    .bold()
                
                Picker("Select Emoji",selection: $selection){
                    ForEach(Emoji.allCases, id:\.self){ emoji in Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji App")
            .padding()
        }
        
    }
}

#Preview {
    EmojiDemo()
}
