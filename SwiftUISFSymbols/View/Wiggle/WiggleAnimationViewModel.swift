//
//  WiggleAnimationViewModel.swift
//  SwiftUISFSymbols
//
//  Created by Melih Çulha on 6.08.2024.
//

import Foundation
import SwiftUI

@Observable
final class WiggleAnimationViewModel {
    
    var isAnimating: Bool = false
    var animationConfiguration: AnimationConfiguration = .init()
    
    var effect: WiggleSymbolEffect {
        return animationConfiguration.motionGroup.effect
    }
}

final class AnimationConfiguration {
    var motionGroup: MotionGroup = .byLayer
}

enum MotionGroup: CaseIterable {
    case byLayer
    case wholeSymbole
    
    var title: String {
        switch self {
        case .byLayer:
            return "By Layer"
        case .wholeSymbole:
            return "Whole Symbole"
        }
    }
    
    var effect: WiggleSymbolEffect {
        switch self {
        case .byLayer:
            return .wiggle.byLayer
        case .wholeSymbole:
            return .wiggle.wholeSymbol
        }
    }
}
