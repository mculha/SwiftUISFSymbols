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
    let animationNames: [String] = ["Wiggle", "Rotate", "Breathe"]
}
