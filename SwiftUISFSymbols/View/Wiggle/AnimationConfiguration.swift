//
//  AnimationConfiguration.swift
//  SwiftUISFSymbols
//
//  Created by Melih Çulha on 12.08.2024.
//
import SwiftUI

struct AnimationConfiguration {
    var motionGroup: MotionGroup = .byLayer
    var position: StartPosition = .left
    
    var effect: WiggleSymbolEffect {
        switch (motionGroup, position) {
        case (.byLayer, .left):
            return .wiggle.byLayer.left
        case (.byLayer, .right):
            return .wiggle.byLayer.right
        case (.byLayer, .up):
            return .wiggle.byLayer.up
        case (.byLayer, .down):
            return .wiggle.byLayer.down
        case (.byLayer, .forward):
            return .wiggle.byLayer.forward
        case (.byLayer, .backward):
            return .wiggle.byLayer.backward
        case (.wholeSymbole, .left):
            return .wiggle.wholeSymbol.left
        case (.wholeSymbole, .right):
            return .wiggle.wholeSymbol.right
        case (.wholeSymbole, .up):
            return .wiggle.wholeSymbol.up
        case (.wholeSymbole, .down):
            return .wiggle.wholeSymbol.down
        case (.wholeSymbole, .forward):
            return .wiggle.wholeSymbol.forward
        case (.wholeSymbole, .backward):
            return .wiggle.wholeSymbol.backward
        }
    }
}
