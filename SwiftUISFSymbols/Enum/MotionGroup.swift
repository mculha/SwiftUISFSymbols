//
//  MotionGroup.swift
//  SwiftUISFSymbols
//
//  Created by Melih Çulha on 12.08.2024.
//


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
}
