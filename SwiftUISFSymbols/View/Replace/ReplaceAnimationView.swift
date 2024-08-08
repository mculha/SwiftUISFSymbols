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
            
            Image(systemName: viewModel.isAnimating ? "wifi.slash" : "wifi")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundStyle(.blue)
                .contentTransition(.symbolEffect(.replace.byLayer))
                .onTapGesture {
                    viewModel.isAnimating.toggle()
                }
            
            
            Button("Toggle the animation") {
                viewModel.isAnimating.toggle()
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
