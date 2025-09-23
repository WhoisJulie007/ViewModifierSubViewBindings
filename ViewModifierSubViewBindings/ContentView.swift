//
//  ContentView.swift
//  ViewModifierSubViewBindings
//
//  Created by win603 on 19/09/25.
//

import SwiftUI

struct ContentView: View {
    @State var pressed : Bool = false
    var body: some View {
        VStack {
            ScrollView(){
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        TransportesCardView(name: "Tren", icon: "tram.fill", pressed: $pressed)
                        TransportesCardView(name: "Bus", icon: "bus.doubledecker.fill", pressed: $pressed)
                        TransportesCardView(name: "Avion", icon: "airplane", pressed: $pressed)
                        TransportesCardView(name: "Carro", icon: "car", pressed: $pressed)
                        
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
