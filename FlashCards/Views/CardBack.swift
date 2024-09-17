//
//  CardBack.swift
//  FlashCards
//
//  Created by Ahmed Halilovic on 17. 9. 2024..
//

import SwiftUI

struct CardBack: View {
    @Binding var degree: Double
    let textContent: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.blue.opacity(0.5), lineWidth: 10)
                .padding()
            RoundedRectangle(cornerRadius: 20)
                .fill(.blue.opacity(0.1))
                .padding()
            
            VStack {
                Text("Answer:")
                    .font(Font.custom("Belaga", size: 60))
                
                Text(textContent)
                    .font(Font.custom("Belaga", size: 35))
                    .multilineTextAlignment(.center)
                    .padding(25)
            }
        }
        .rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}

