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
        }.padding()
            .frame(maxWidth: 100, alignment: .leading)
            .background(Color.white)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.2), lineWidth: 2)
            )
    }
}

#Preview {
    TransportesCardView(nombre: "Avion", icono: "square.and.arrow.up")
}
