//
//  ISSKitchen.swift
//  Homework2(Delegate)
//
//  Created by Кирилл Афонин on 24/11/2019.
//  Copyright © 2019 Кирилл Афонин. All rights reserved.
//

import Foundation


/// Кухня
class ISSKitchen: ISSKitchenProtocol {
    
    var delegate: ISSWaiterProtocol?
    var isPrepared = false // готовность заказа
        
    /// Меняет статус заказа на "Готов" и говорит официанту отнести его
    func prepareOrder() {
        isPrepared = true
        delegate?.deliverOrder()

    }
    
}
