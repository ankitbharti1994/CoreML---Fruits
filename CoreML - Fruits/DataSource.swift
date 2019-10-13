//
//  DataSource.swift
//  CoreML - Fruits
//
//  Created by ankit bharti on 08/10/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import Foundation

struct DataSource {
    private(set) var fruits: [String]
    
    init() {
        let mangos = (1...11).map { "mango" + "\($0)" }
        let oranges = (1...9).map { "orange" + "\($0)" }
        
        self.fruits = [String]()
        self.fruits.append(contentsOf: mangos)
        self.fruits.append(contentsOf: oranges)
        self.fruits.shuffle()
    }
}
