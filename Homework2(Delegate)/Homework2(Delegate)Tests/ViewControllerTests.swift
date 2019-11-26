//
//  ViewControllerTests.swift
//  Homework2(Delegate)Tests
//
//  Created by Кирилл Афонин on 24/11/2019.
//  Copyright © 2019 Кирилл Афонин. All rights reserved.
//

import XCTest
@testable import Homework2_Delegate_

class ViewControllerTests: XCTestCase {
    var waiter: WaiterMock!
    var client: ViewController!

    override func setUp() {
        super.setUp()
        waiter = WaiterMock()
        client = ViewController(waiter: waiter)
    }

    override func tearDown() {
        client = nil
        waiter = nil
        super.tearDown()
    }

    func testThatClientMakeOrderOnlyOnce() {
        // arrange
        let numberOfInteractions = 1
        
        // action
        client.makeOrder()
        
        // assert
        XCTAssertEqual(numberOfInteractions, waiter.numberOfCalls, "Количество заказов, сделанных клиентом, не равно 1")
    }
    
    func testThatClientCanLeaveTips() {
        // arrange
        let numberOfInteractions = 1
        let tips = 15
        
        // action
        client.leaveTips(15)
        
        // assert
        XCTAssertEqual(numberOfInteractions, waiter.numberOfCalls, "Клиент оставляет чаевые больше или меньше чем 1 раз")
        XCTAssertEqual(tips, waiter.tips, "Количество отданных и полученных чаевых не совпадает")
    }

}


