//
//  BreatheAnimationView.swift
//  SwiftUISFSymbols
//
//  Created by Melih Çulha on 9.08.2024.
//

import SwiftUI

struct BreatheAnimationView: View {
    
    @State private var viewModel: BreatheAnimationViewModel = .init()
    
    var body: some View {
        VStack(spacing: 60) {
            
            VStack(spacing: 60) {
                HStack(spacing: 40) {
                    BreatheImageView(systemName: "translate", isAnimating: viewModel.isAnimating)
                    
                    BreatheImageView(systemName: "record.circle", isAnimating: viewModel.isAnimating)
                    
                    BreatheImageView(systemName: "waveform", isAnimating: viewModel.isAnimating)
                    
                }
                
                HStack(spacing: 40) {
                    BreatheImageView(systemName: "lungs.fill", isAnimating: viewModel.isAnimating)
                    
                    BreatheImageView(systemName: "moon.zzz.fill", isAnimating: viewModel.isAnimating)
                    
                    BreatheImageView(systemName: "livephoto", isAnimating: viewModel.isAnimating)
                    
                }
            }
            .font(.largeTitle)
            
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
    BreatheAnimationView()
}

