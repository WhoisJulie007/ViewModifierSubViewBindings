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
                TrainCardView()
                TrainCardView()
                TrainCardView()
                TrainCardView()
                TrainCardView()
                TrainCardView()
                TrainCardView()
                TrainCardView()
                TrainCardView()
                TrainCardView()
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
