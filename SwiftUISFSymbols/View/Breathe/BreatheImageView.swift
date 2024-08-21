//
//  BreatheImageView.swift
//  SwiftUISFSymbols
//
//  Created by Melih Çulha on 15.08.2024.
//
import SwiftUI

struct BreatheImageView: View {
    
    var systemName: String
    var isAnimating: Bool
    
    var body: some View {
        Image(systemName: systemName)
            .font(.system(size: 60))
            .symbolRenderingMode(.palette)
            .foregroundStyle(Color(.rose), Color(.rose).opacity(0.7))
            .symbolEffect(.breathe.byLayer, options: .repeat(.periodic(3)), isActive: isAnimating)
    }
}
