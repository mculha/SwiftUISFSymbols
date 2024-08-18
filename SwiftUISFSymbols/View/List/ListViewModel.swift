//
//  ListViewModel.swift
//  SwiftUISFSymbols
//
//  Created by Melih Çulha on 6.08.2024.
//
import SwiftUI

@Observable
final class ListViewModel {
    
    @ObservationIgnored
    let animations: [AnimationModel] = [
        AnimationModel(name: "Wiggle", type: .wiggle),
        AnimationModel(name: "Rotate", type: .rotate),
        AnimationModel(name: "Breathe", type: .breathe),
        AnimationModel(name: "Replace", type: .replace),
        AnimationModel(name: "Variable Color", type: .variableColor),
    ]
}
