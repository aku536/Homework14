//
//  ISSKitchenTests.swift
//  Homework2(Delegate)Tests
//
//  Created by Кирилл Афонин on 26/11/2019.
//  Copyright © 2019 Кирилл Афонин. All rights reserved.
//

import XCTest
@testable import Homework2_Delegate_

class ISSKitchenTests: XCTestCase {
    var kitchen: ISSKitchen!
    var waiter: WaiterMock!

    override func setUp() {
        super.setUp()
        kitchen = ISSKitchen()
        waiter = WaiterMock()
    }

    override func tearDown() {
        kitchen = nil
        waiter = nil
        super.tearDown()
    }

    func testThat() {
        // arrange
        kitchen.delegate = waiter
        
        // action
        kitchen.prepareOrder()
        
        // assert
        XCTAssert(kitchen.isPrepared, "Заказ не был приготовлен!")
        XCTAssertEqual(1, waiter.numberOfCalls, "Заказ не был передан делегату или был передан несколько раз")

    }


}
