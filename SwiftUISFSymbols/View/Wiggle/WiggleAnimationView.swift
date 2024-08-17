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
                    .frame(width: 150, height: 150)
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(Color(.rose), Color(.rose).opacity(0.7))
                    .font(.title)
                    .symbolEffect(viewModel.effect, value: viewModel.isAnimating)
            }
            
            List {
                Section("Motion Group") {
                    MotionGroupView(motionGroup: $viewModel.animationConfiguration.motionGroup)
                }
                
                Section("Start Position") {
                    StartPositionView(position: $viewModel.animationConfiguration.position)
                }
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
    }
}

#Preview {
    WiggleAnimationView()
}

struct MotionGroupView: View {
    
    @Binding var motionGroup: MotionGroup
    
    var body: some View {
        ForEach(MotionGroup.allCases, id: \.self) { motion in
            HStack {
                Text(motion.title)
                    .font(.system(size: 14))
                
                Spacer()
                
                if motion == motionGroup {
                    Image(systemName: "checkmark")
                        .foregroundStyle(.green)
                        .fontWeight(.bold)
                }
            }
            .contentShape(Rectangle())
            .onTapGesture {
                withAnimation {
                    motionGroup = motion
                }
            }
        }
    }
}

struct StartPositionView: View {
    
    @Binding var position: StartPosition
    
    var body: some View {
        ForEach(StartPosition.allCases, id: \.self) { position in
            HStack {
                Text(position.title)
                    .font(.system(size: 14))
                
                Spacer()
                
                if position == self.position {
                    Image(systemName: "checkmark")
                        .foregroundStyle(.green)
                        .fontWeight(.bold)
                }
            }
            .contentShape(Rectangle())
            .onTapGesture {
                withAnimation {
                    self.position = position
                }
            }
        }
    }
}
