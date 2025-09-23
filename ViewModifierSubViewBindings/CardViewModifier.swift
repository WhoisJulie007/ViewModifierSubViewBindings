//
//  CardViewModifier.swift
//  ViewModifierSubViewBindings
//
//  Created by win603 on 22/09/25.
//

import SwiftUI

struct CardViewModifier: ViewModifier  {
    @State var color: Color = .white
    func body(content: Content) -> some View {
            content
                .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(color)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.2), lineWidth: 2)
            ).padding()
        }

}

