//
//  ContentView.swift
//  CoreML - Fruits
//
//  Created by ankit bharti on 08/10/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private let fruits = DataSource().fruits
    var body: some View {
        NavigationView {
            List(fruits, id: \String.self) { fruit in
                NavigationLink(destination: DestinationView(fruit: fruit)) {
                    Image(fruit)
                        .frame(width: 200.0, height: 200.0)
                        .padding()
                        .clipShape(Circle())
                        .shadow(radius: 10.0)
                }
            }
            .navigationBarTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
