//
//  WiggleAnimationView.swift
//  SwiftUISFSymbols
//
//  Created by Melih Çulha on 6.08.2024.
//

import SwiftUI

struct WiggleAnimationView: View {
    @State private var viewModel: WiggleAnimationViewModel = WiggleAnimationViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "translate")
                    .font(.title)
                    .symbolEffect(.wiggle.byLayer.clockwise, options: .repeat(.periodic(3, delay: 2.0)), value: viewModel.isAnimating)
            }
            
            Spacer()
        }
        .onAppear {
            viewModel.isAnimating = true
        }
    }
}

#Preview {
    WiggleAnimationView()
}
