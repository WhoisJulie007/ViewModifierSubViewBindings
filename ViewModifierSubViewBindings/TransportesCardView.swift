//
//  TransportesCardView.swift
//  ViewModifierSubViewBindings
//
//  Created by win603 on 19/09/25.
//

import SwiftUI

struct TransportesCardView: View {
    @State var name: String
    @State var icon : String
    @Binding var pressed : Bool
    
    var body: some View {
                
                Label(name, systemImage: icon)
                    .rotationEffect(Angle(degrees: pressed ? 180 : 0))
                    .modifier(CardViewModifier())
                    .onTapGesture {
                        withAnimation(){
                            self.pressed.toggle()
                        }
                    }

        if pressed {
        Image(systemName: "figure.run")   .foregroundColor(.white)
                            .padding(8)
                            .background(Color.blue)
                            .clipShape(Ellipse())
                            .transition(.slide)
                    }
            
    }
}

#Preview {
    TransportesCardView(name: "Avion", icon: "square.and.arrow.up", pressed: .constant(false))
}
