//
//  PulseAnimationView.swift
//  SwiftUISFSymbols
//
//  Created by Melih Çulha on 25.08.2024.
//

import SwiftUI

struct PulseView: View {
    @State private var viewModel: PulseViewModel = .init()
    
    var body: some View {
        VStack {
            Image(systemName: "person.text.rectangle")
                .font(.system(size: 100))
                .symbolRenderingMode(.palette)
                .foregroundStyle(Color(.rose), Color(.rose).opacity(0.7))
                .symbolEffect(.pulse, isActive: viewModel.isAnimating)
                
            Image(systemName: "person.text.rectangle")
                .font(.system(size: 100))
                .symbolRenderingMode(.palette)
                .foregroundStyle(Color(.rose), Color(.rose).opacity(0.7))
                .symbolEffect(.pulse.wholeSymbol, options: .repeat(3), isActive: viewModel.isAnimating)
            
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
    PulseView()
}
