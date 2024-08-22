//
//  BounceView.swift
//  SwiftUISFSymbols
//
//  Created by Melih Çulha on 22.08.2024.
//

import SwiftUI

struct BounceView: View {
    @State private var viewModel: BounceViewModel = .init()
    
    var body: some View {
        VStack(spacing: 25) {
            Image(systemName: "mail.stack")
                .symbolEffect(.bounce.down, value: viewModel.isAnimating)
                .font(.system(size: 100))
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
    BounceView()
}
