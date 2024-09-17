//
//  CardFront.swift
//  FlashCards
//
//  Created by Ahmed Halilovic on 17. 9. 2024..
//

import SwiftUI

struct CardFront: View {
    @Binding var degree: Double // Rotation degree for the card
    let textContent: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.green.opacity(0.5), lineWidth: 10) // Border of the card
                .padding()
            RoundedRectangle(cornerRadius: 20)
                .fill(.green.opacity(0.1))
                .padding()
            
            VStack {
                Text("Question:")
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
