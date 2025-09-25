//
//  ContentView.swift
//  ViewModifierSubViewBindings
//
//  Created by win603 on 19/09/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var pressed : Bool = false
    @State var place : String = ""
    @State var cardSeleccionada: Int = -1
    
    var body: some View {
        VStack {
            ScrollView(){
                VStack{
                    
                    TextField("¿A dónde deseas viajar?", text: $place)
                        .textInputAutocapitalization(.words)
                        .disableAutocorrection(true)
                        .padding()
                    GroupBox(){
                        Text("Viajaremos a \(place)")
                    }
                }


                ScrollView(.horizontal, showsIndicators: false){
                    Text("Contiene view \(cardSeleccionada)")
                    HStack{
                        TransportesCardView(name: "Tren", image: "tram.fill", index: 0, selectedIndex: cardSeleccionada, pressed: $pressed)
                        TransportesCardView(name: "Bus", image: "bus.doubledecker.fill", index: 1, selectedIndex: cardSeleccionada, pressed: $pressed)
                        TransportesCardView(name: "Avion", image: "airplane", index: 2, selectedIndex: cardSeleccionada, pressed: $pressed)
                        TransportesCardView(name: "Carro", image: "car", index: 3, selectedIndex: cardSeleccionada, pressed: $pressed)
                        
                        
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
