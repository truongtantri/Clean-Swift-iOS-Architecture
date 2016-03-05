//
//  OrdersWorker.swift
//  CleanStore
//
//  Created by Hiep Nguyen on 3/2/16.
//  Copyright (c) 2016 Zyncas. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import Foundation
import UIKit

protocol OrdersStoreProtocol {
    
    func fetchOrders(completionHandler: (orders: [Order]) -> Void)
}

class OrdersWorker : OrdersStoreProtocol {
    
    var ordersStore: OrdersStoreProtocol
    
    init(ordersStore: OrdersStoreProtocol) {
        
        self.ordersStore = ordersStore
    }
    
    // MARK: Business Logic
    
    func fetchOrders(completionHandler: (orders: [Order]) -> Void) {
        
        ordersStore.fetchOrders {(orders: [Order]) -> Void in
            
            completionHandler(orders: orders)
        }
    }
}
