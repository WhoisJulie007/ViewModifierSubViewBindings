//
//  TransportesCardView.swift
//  ViewModifierSubViewBindings
//
//  Created by win603 on 19/09/25.
//

import SwiftUI

struct TransportesCardView: View {
        let name: String
        let image: String
        var index: Int
        @State var selectedIndex: Int
        @Binding var pressed: Bool

        
        func labelPresionado() -> CGFloat {
            return pressed ? 360: 0
        }
        
        var body: some View {
            VStack {
                Label(name, systemImage: image)
                    .modifier(CardViewModifier())
                    .rotationEffect(.degrees(labelPresionado()))
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            selectedIndex = index
                            self.pressed.toggle()
                        }
                        
                    }
                Text("index seleccionado es: \(selectedIndex)")
            }
        }
    }

    #Preview {
        TransportesCardView(name: "Barco", image: "sailboat", index: 0, selectedIndex: -1, pressed: .constant(false))
    }
