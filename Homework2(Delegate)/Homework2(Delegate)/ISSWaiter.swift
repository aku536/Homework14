//
//  ISSWaiter.swift
//  Homework2(Delegate)
//
//  Created by Кирилл Афонин on 24/11/2019.
//  Copyright © 2019 Кирилл Афонин. All rights reserved.
//

import Foundation


/// Официант выступает посредеником между кухней и клиентом
class ISSWaiter: ISSWaiterProtocol {
    
    var kitchen: ISSKitchenProtocol
    var tips: Int = 0
    
    init() {
        kitchen = ISSKitchen()
        kitchen.delegate = self
    }
    
    /// Принимает заказ у клиента и передает на кухню
    func takeOrder() {
        print("Заказ начали готовить.")
        kitchen.prepareOrder()
    }
    
    /// Если заказ готов, отдаем клиенту
    func deliverOrder() {
        if kitchen.isPrepared {
            print("Заказ готов, приятного аппетита!")
        }
    }
    
    /// Получаем чаевые от клиента
    ///
    /// - Parameter tips: количество чаевых
    func takeTips(_ tips: Int) {
        self.tips += tips
        print("Вы оставили чаевые в размере: \(tips). Спасибо, приходите ещё!")
    }
}





    
    

        
        

