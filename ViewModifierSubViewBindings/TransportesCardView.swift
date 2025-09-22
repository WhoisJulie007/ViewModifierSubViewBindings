//
//  TransportesCardView.swift
//  ViewModifierSubViewBindings
//
//  Created by win603 on 19/09/25.
//

import SwiftUI

struct TransportesCardView: View {
    @State var nombre: String
    @State var icono : String
    var body: some View {
        HStack{
            Image(systemName: icono)
                .foregroundColor(.black)
                .font(.system(size: 15))
            
            Text(nombre)
                .font(.system(size: 15))
        }.modifier(CardViewModifier())
            
            //.rotation3DEffect(.degrees(18), axis: (x: 0, y: 1, z: 0))
    }
}

#Preview {
    TransportesCardView(nombre: "Avion", icono: "square.and.arrow.up")
}
