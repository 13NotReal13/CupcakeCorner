//
//  Order.swift
//  CupcakeCorner
//
//  Created by Иван Семикин on 10/10/2024.
//

import Foundation

@Observable
class Order: Codable {
    enum CodingKeys: String, CodingKey {
        case _type = "type"
        case _quantity = "quantity"
        case _specialRequestEnables = "specialRequestEnables"
        case _extraFrosting = "extraFrosting"
        case _addSprinkles = "addSprinkles"
        case _name = "name"
        case _streetAddress = "streetAddress"
        case _city = "city"
        case _zip = "xip"
    }
    
    static let types = ["Vaville", "Strawberry", "Chocolate", "Rainbow"]
    
    var type = 0
    var quantity = 3
    
    var specialRequestEnables = false {
        didSet {
            if specialRequestEnables == false {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    
    var extraFrosting = false
    var addSprinkles = false
    
    var name = ""
    var streetAddress = ""
    var city = ""
    var zip = ""
    
    var hasVaildAddress: Bool {
        if name.isEmpty || streetAddress.isEmpty || city.isEmpty || zip.isEmpty {
            return false
        }
        
        return true
    }
    
    var cost: Decimal {
        // 2$ per cake
        var cost = Decimal(quantity) * 2
        
        // complicated cakes cost more
        cost += Decimal(type) / 2
        
        if extraFrosting {
            cost += Decimal(quantity)
        }
        
        if addSprinkles {
            cost += Decimal(quantity) / 2
        }
        
        return cost
    }
}
