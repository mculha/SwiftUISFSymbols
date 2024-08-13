//
//  RotateImageView.swift
//  SwiftUISFSymbols
//
//  Created by Melih Çulha on 14.08.2024.
//

import SwiftUI

struct RotateImageView: View {
    
    var systemName: String
    var isAnimating: Bool
    
    var body: some View {
        Image(systemName: systemName)
            .font(.system(size: 60))
            .symbolRenderingMode(.palette)
            .foregroundStyle(Color(red: 243/255, green: 58/255, blue: 106/255), Color(red: 243/255, green: 58/255, blue: 106/255, opacity: 0.7))
            .symbolEffect(.rotate, value: isAnimating)
    }
}
