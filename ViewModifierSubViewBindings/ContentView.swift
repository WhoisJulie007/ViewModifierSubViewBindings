//
//  ContentView.swift
//  ViewModifierSubViewBindings
//
//  Created by win603 on 19/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! Esta es una prueba de ViewModifierSubViewBindings.")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
