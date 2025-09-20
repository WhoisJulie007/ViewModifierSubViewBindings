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
            ScrollView(){
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        TransportesCardView(nombre: "Tren", icono: "tram.fill")
                        TransportesCardView(nombre: "Bus", icono: "bus.doubledecker.fill")
                        TransportesCardView(nombre: "Avion", icono: "airplane")
                        TransportesCardView(nombre: "Carro", icono: "car")
                        
                    }
                }
                
                TrainCardView(nombre: "Tampico", iconColor: Color.red)
                TrainCardView(nombre: "Queretaro", iconColor: Color.blue)
                TrainCardView(nombre: "Villahermosa", iconColor: Color.brown)
                TrainCardView(nombre: "Tuxpan", iconColor: Color.yellow)
                TrainCardView(nombre: "Hermosillo", iconColor: Color.green)
                TrainCardView(nombre: "Monterrey", iconColor: Color.orange)
                TrainCardView(nombre: "Nuevo Laredo", iconColor: Color.cyan)
                TrainCardView(nombre: "Reynosa", iconColor: Color.pink)
                TrainCardView(nombre: "Matamoros", iconColor: Color.purple)
                TrainCardView(nombre: "McAllen", iconColor: Color.gray)
                
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
