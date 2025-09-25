//
//  TrainCardView.swift
//  ViewModifierSubViewBindings
//
//  Created by win603 on 19/09/25.
//

import SwiftUI

struct TrainCardView: View {
    @State var nombre: String
    @State var iconColor : Color
    @State var showAlert: Bool =  false

    
    var body: some View {
        
        VStack(){
                    
                    HStack(){
                        Spacer()
                        
                        Text("Oferta")
                            .padding(.vertical, 4)
                            .padding(.horizontal, 12)
                            .background(iconColor)
                            .foregroundColor(.white)
                            .cornerRadius(2)
                            .frame( maxWidth: .infinity, alignment: .trailing)
                            
                    }
                    
                    Image(systemName: "tram.circle.fill")
                        .font(.system(size: 90, weight: .light, design: .default))
                        .foregroundColor(iconColor)
                        .aspectRatio(contentMode: .fit )
                        .frame(width: 120, height: 100)
                    
                    Text(nombre)
                        .font(.largeTitle)
                        .lineLimit(1)
                        .truncationMode(.middle)
                        .padding(.bottom)
                        .frame( maxWidth: .infinity)
                }.modifier(CardViewModifier())
            .gesture(TapGesture().onEnded{ _ in
                                self.showAlert.toggle()
                        })
                        .alert(Text("Has selecionado el tren \(nombre)") ,isPresented: $showAlert) {
                            
                        }

    }
}

#Preview {
    TrainCardView(nombre: "Villahermosa", iconColor: Color.purple)
}
