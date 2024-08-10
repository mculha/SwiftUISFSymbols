//
//  AnimationModel.swift
//  SwiftUISFSymbols
//
//  Created by Melih Çulha on 6.08.2024.
//

import SwiftUI

struct AnimationModel: Hashable {
    let name: String
    let type: AnimationType
    
    enum AnimationType: String, CaseIterable {
        case wiggle
        case rotate
        case breathe
        case replace
        
        @ViewBuilder
        var destination: some View {
            switch self {
            case .wiggle:
                WiggleAnimationView()
            case .breathe:
                BreatheAnimationView()
            case .rotate:
                RotateAnimationView()
            case .replace:
                ReplaceAnimationView()
            }
        }
    }
}
