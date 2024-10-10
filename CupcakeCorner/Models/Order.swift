//
//  Order.swift
//  CupcakeCorner
//
//  Created by Иван Семикин on 10/10/2024.
//

import Foundation

@Observable
class Order {
    static let types = ["Vaville", "Strawberry", "Chocolate", "Rainbow"]
    
    var type = 0
    var quantity = 3
    
    var specialRequestEnables = false
    var extraFrosting = false
    var addSpronkles = false
}
