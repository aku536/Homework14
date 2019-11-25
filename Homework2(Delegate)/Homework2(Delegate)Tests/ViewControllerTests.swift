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

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatClientMakeOrderOnlyOnce() {
        // arrange
        let waiter = WaiterMock()
        let client = ViewController(waiter: waiter)
        let numberOfInteractions = 1
        
        // action
        client.makeOrder()
        
        // assert
        XCTAssertEqual(numberOfInteractions, waiter.numberOfCalls, "Количество заказов, сделанных клиентом, не равно 1")
    }
    
    func testThatClientCanLeaveTips() {
        // arrange
        let waiter = WaiterMock()
        let client = ViewController(waiter: waiter)
        let numberOfInteractions = 1
        let tips = 15
        
        // action
        client.leaveTips(15)
        
        // assert
        XCTAssertEqual(numberOfInteractions, waiter.numberOfCalls, "Клиент оставляет чаевые больше или меньше чем 1 раз")
        XCTAssertEqual(tips, waiter.tips, "Количество отданных и полученных чаевых не совпадает")
    }

}

class WaiterMock: ISSWaiterProtocol {
    var numberOfCalls = 0
    
    func takeOrder() {
        numberOfCalls += 1
        return
    }
    
    func deliverOrder() {
        return
    }

    var tips = 0
    func takeTips(_ tips: Int) {
        numberOfCalls += 1
        self.tips += 15
        return
    }
}
