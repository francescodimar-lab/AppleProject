//
//  ActivityCardView.swift
//  TestAPP
//
//  Created by Francesco Di Marco on 15/10/2026.
//

import SwiftUI

// Il nostro "stampino" riutilizzabile per le card
struct ActivityCardView: View {
    // Variabili che cambieranno per ogni card
    var title: String
    var iconName: String
    var color: Color
    var action: () -> Void
    
    var newColor: Color
    
    var body: some View {
        // 1. Il Bottone
        Button(action: action) {
            
            // 2. L'aspetto visivo (Label)
            VStack(alignment: .leading, spacing: 12) {
                // Icona
                Image(systemName: iconName)
                    .font(.title2)
                    .foregroundColor(color)
                
                // Testo
                Text(title)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(color)
            }
            .frame(maxWidth: .infinity, alignment: .leading) // Fa allargare la card per riempire la colonna
            .padding()
            
            .background(color.opacity(0.2))
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(color, lineWidth: 1.5)
            )
        }
        
        .buttonStyle(PlainButtonStyle())
    }
}
