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
                ForEach(viewModel.animationNames, id: \.self) { name in
                    Text(name)
                        .font(.system(size: 16, weight: .regular))
                }
            }
            .clipShape(.rect(cornerRadius: 20))
        }
        .padding()
    }
}

#Preview {
    ListView()
}
