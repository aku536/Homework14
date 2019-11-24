//
//  Homework2_Delegate_Tests.swift
//  Homework2(Delegate)Tests
//
//  Created by Кирилл Афонин on 24/11/2019.
//  Copyright © 2019 Кирилл Афонин. All rights reserved.
//

import XCTest
@testable import Homework2_Delegate_

class Homework2_Delegate_Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatWaiterCanRecieveTips() {
        // arrange
        let client = ViewController()
        let waiter = client.waiter as! ISSWaiter
        let tips = 15
        
        // action
        client.leaveTips(tips)
        
        // assert
        XCTAssertEqual(tips, waiter.tips, "Официант получил некорректное количество чаевых")
    }
    
    func testThatKitchenCanPrepareOrder() {
        // arrange
        let client = ViewController()
        let waiter = client.waiter as! ISSWaiter
        let kitchen = waiter.kitchen
        
        // action
        client.makeOrder()
        
        // assert
        XCTAssertTrue(kitchen.isPrepared, "Заказ не приготовлен")
    }

}
