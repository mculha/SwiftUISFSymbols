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
            Spacer()
            
            HStack {
                Image(systemName: "translate")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .font(.title)
                    .symbolEffect(viewModel.effect, options: .repeat(.periodic(3, delay: 1.0)), value: viewModel.isAnimating)
            }
            
            Picker(selection: $viewModel.animationConfiguration.motionGroup, label: Text("Motion Group")) {
                ForEach(MotionGroup.allCases, id: \.self) { motion in
                    Text(motion.title)
                }
            }
            .pickerStyle(.segmented)
            .padding()
            
            Picker(selection: $viewModel.animationConfiguration.position, label: Text("Start Position")) {
                ForEach(StartPosition.allCases, id: \.self) { position in
                    Text(position.title)
                }
            }
            .pickerStyle(.segmented)
            .padding()
            
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
    }
}

#Preview {
    WiggleAnimationView()
}
