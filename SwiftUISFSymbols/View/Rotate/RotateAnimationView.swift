//
//  RotateAnimationView.swift
//  SwiftUISFSymbols
//
//  Created by Melih Çulha on 9.08.2024.
//

import SwiftUI

struct RotateAnimationView: View {
    
    @State private var viewModel: RotateAnimationViewModel = .init()
    
    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            HStack {
                RotateImageView(systemName: "soccerball", isAnimating: viewModel.isAnimating)
                Spacer()
                RotateImageView(systemName: "clock.arrow.trianglehead.2.counterclockwise.rotate.90", isAnimating: viewModel.isAnimating)
                Spacer()
                RotateImageView(systemName: "stopwatch", isAnimating: viewModel.isAnimating)
            }
            
            HStack {
                RotateImageView(systemName: "stopwatch", isAnimating: viewModel.isAnimating)
                Spacer()
                RotateImageView(systemName: "gear", isAnimating: viewModel.isAnimating)
                Spacer()
                RotateImageView(systemName: "gearshape.arrow.trianglehead.2.clockwise.rotate.90", isAnimating: viewModel.isAnimating)
            }
            
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
        .padding(.horizontal, 50)
    }
}

#Preview {
    RotateAnimationView()
}
