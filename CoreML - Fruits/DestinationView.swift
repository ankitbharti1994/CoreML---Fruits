//
//  DestinationView.swift
//  CoreML - Fruits
//
//  Created by ankit bharti on 08/10/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct DestinationView: View {
    let fruit: String
    var body: some View {
        Image(fruit)
            .resizable()
            .edgesIgnoringSafeArea([.top, .bottom])
            .navigationBarTitle(ImageClassification(name: fruit).type)
    }
}

struct DestinationView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationView(fruit: "mango5")
    }
}
