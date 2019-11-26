//
//  WaiterMock.swift
//  Homework2(Delegate)Tests
//
//  Created by Кирилл Афонин on 26/11/2019.
//  Copyright © 2019 Кирилл Афонин. All rights reserved.
//

import Foundation
@testable import Homework2_Delegate_

class WaiterMock: ISSWaiterProtocol {
    var numberOfCalls = 0
    
    func takeOrder() {
        numberOfCalls += 1
        return
    }
    
    func deliverOrder() {
        numberOfCalls += 1
        return
    }
    
    var tips = 0
    func takeTips(_ tips: Int) {
        numberOfCalls += 1
        self.tips += 15
        return
    }
}
