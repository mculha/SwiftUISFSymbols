//
//  ListView.swift
//  SwiftUISFSymbols
//
//  Created by Melih Çulha on 6.08.2024.
//

import SwiftUI

struct ListView: View {
    
    @State private var viewModel: ListViewModel = .init()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.animations, id: \.self) { model in
                    NavigationLink(value: model) {
                        Text(model.name)
                            .font(.system(size: 16, weight: .regular))
                    }
                }
            }
            .clipShape(.rect(cornerRadius: 20))
            .navigationDestination(for: AnimationModel.self) { model in
                model.type.destination
            }
        }
        .padding()
    }
}

#Preview {
    ListView()
}
