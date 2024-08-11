//
//  StartPosition.swift
//  SwiftUISFSymbols
//
//  Created by Melih Çulha on 12.08.2024.
//


enum StartPosition: CaseIterable, Hashable {
    
    case left
    case right
    case up
    case down
    case forward
    case backward
    
    var title: String {
        switch self {
        case .left:
            return "Left"
        case .right:
            return "Right"
        case .up:
            return "Up"
        case .down:
            return "Down"
        case .backward:
            return "Backward"
        case .forward:
            return "Forward"
        }
    }
}