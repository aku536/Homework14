//
//  ISSKitchenProtocol.swift
//  Homework2(Delegate)
//
//  Created by Кирилл Афонин on 26/11/2019.
//  Copyright © 2019 Кирилл Афонин. All rights reserved.
//

import Foundation

protocol ISSKitchenProtocol {
    
    var delegate: ISSWaiterProtocol? { get set }
    var isPrepared: Bool { get }
    
    // Кухня готовит заказ
    func prepareOrder()
    
}

