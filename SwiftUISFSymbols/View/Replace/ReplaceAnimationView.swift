//
//  ReplaceAnimationView.swift
//  SwiftUISFSymbols
//
//  Created by Melih Çulha on 8.08.2024.
//

import SwiftUI

struct ReplaceAnimationView: View {
    @State private var viewModel: ReplaceAnimationViewModel = ReplaceAnimationViewModel()
    
    var body: some View {
        VStack(spacing: 25) {
            
            Image(systemName: viewModel.isAnimating ? "bell.slash" : "bell")
                .font(.system(size: 100))
                .symbolRenderingMode(.palette)
                .symbolEffect(.bounce, value: viewModel.isAnimating)
                .contentTransition(.symbolEffect(.replace))
                .foregroundStyle(.orange, .purple)
            
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
    ReplaceAnimationView()
}
