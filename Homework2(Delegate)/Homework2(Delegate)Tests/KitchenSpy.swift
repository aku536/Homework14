//
//  KitchenSpy.swift
//  Homework2(Delegate)Tests
//
//  Created by Кирилл Афонин on 26/11/2019.
//  Copyright © 2019 Кирилл Афонин. All rights reserved.
//

import Foundation
@testable import Homework2_Delegate_

class KitchenSpy: ISSKitchenProtocol {
    var delegate: ISSWaiterProtocol?
    var isPrepared = true
    var callsOfPrepareOrder = 0
    
    func prepareOrder() {
        callsOfPrepareOrder += 1
        return
    }
}
