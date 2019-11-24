//
//  ViewController.swift
//  Homework2(Delegate)
//
//  Created by Кирилл Афонин on 24/11/2019.
//  Copyright © 2019 Кирилл Афонин. All rights reserved.
//

import UIKit

// выступает в качестве клиента
class ViewController: UIViewController {
    
    // официант
    var waiter: ISSWaiterProtocol = ISSWaiter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Делаем заказ и оставляем чаевые, если официант их принимает
        makeOrder()
        leaveTips(10)
    }

    func makeOrder() {
        waiter.takeOrder()
    }
    
    func leaveTips(_ tips: Int) {
        waiter.takeTips(tips)
    }


}

