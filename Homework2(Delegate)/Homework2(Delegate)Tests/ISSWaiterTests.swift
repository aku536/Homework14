//
//  ISSWaiterTests.swift
//  Homework2(Delegate)Tests
//
//  Created by Кирилл Афонин on 26/11/2019.
//  Copyright © 2019 Кирилл Афонин. All rights reserved.
//

import XCTest
@testable import Homework2_Delegate_

class ISSWaiterTests: XCTestCase {
    var waiter: ISSWaiter!
    var kitchen: KitchenSpy!

    override func setUp() {
        super.setUp()
        waiter = ISSWaiter()
        kitchen = KitchenSpy()
    }

    override func tearDown() {
        waiter = nil
        kitchen = nil
        super.tearDown()
    }

    func testThatWaiterCanTransferOrderToKitchen() {
        // arrange
        waiter.kitchen = kitchen
        
        // action
        waiter.takeOrder()
        
        // assert
        XCTAssertEqual(1, kitchen.callsOfPrepareOrder, "Заказ был передан некорректно")
    }
    
    func testThatWaiterCanRecieveTipsCorrectly() {
        // arrange
        let tips = 20
        
        // action
        waiter.takeTips(tips)
        
        // assert
        XCTAssertEqual(20, waiter.tips, "Количество переданных и полученных чаевых не совпадает")
    }

}
