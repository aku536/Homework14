//
//  ISSWaiterProtocol.swift
//  Homework2(Delegate)Tests
//
//  Created by Кирилл Афонин on 24/11/2019.
//  Copyright © 2019 Кирилл Афонин. All rights reserved.
//

import Foundation

/// Официант должен уметь принимать заказ и относить его клиенту. Возможно, он может брать чаевые.
protocol ISSWaiterProtocol {
    // Официант принимает заказ и передает его на кухню
    func takeOrder()
    // Официант приносит готовый заказ клиенту
    func deliverOrder()
    // Официант может взять чаевые
    func takeTips(_ tips: Int)

}

extension ISSWaiterProtocol {
    // Делаем метод опциональным
    func takeTips(_ tips: Int) {
        
    }
}




