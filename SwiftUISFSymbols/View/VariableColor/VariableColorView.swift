//
//  VariableColorView.swift
//  SwiftUISFSymbols
//
//  Created by Melih Çulha on 18.08.2024.
//

import SwiftUI

struct VariableColorView: View {
    
    @State private var viewModel: VariableColorViewModel = VariableColorViewModel()
    
    var body: some View {
        VStack(spacing: 25) {
            Image(systemName: "square.stack.3d.up")
                .symbolEffect(.variableColor.reversing.cumulative, options: .repeat(.continuous).speed(3), isActive: viewModel.isAnimating)
                .font(.system(size: 60))
                .symbolRenderingMode(.palette)
                .foregroundStyle(Color(.rose), Color(.rose).opacity(0.7))
            
            Button("Toggle the animation") {
                withAnimation {
                    viewModel.isAnimating.toggle()
                }
            }
            .foregroundStyle(.white)
            .font(.system(size: 16, weight: .semibold))
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            .background(Color.green)
            .clipShape(.rect(cornerRadius: 8))
            
            Spacer()
            
        }
        .padding(.top, 50)
    }
}

#Preview {
    VariableColorView()
}
