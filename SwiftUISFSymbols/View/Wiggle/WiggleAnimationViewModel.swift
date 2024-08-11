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
        return animationConfiguration.effect
    }
}
