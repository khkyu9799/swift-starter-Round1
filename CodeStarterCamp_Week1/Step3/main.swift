//
//  main.swift
//  CodeStarterCamp_Week1
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func drawStick(stickLength: Int, stick: String) {
    for _ in 1...stickLength {
            print(" ", " ", separator: "\(stick)")
    }
}

func drawBody(body: String, topping: String) {
    print(topping + body + topping)
}

func drawFullBody(body: String, toppping: String, bodyLength: Int) {
    if (body.hasPrefix("|")) {
        let halfLength: Int = bodyLength / 2
        for _ in 1...halfLength {
            drawBody(body: "| |", topping: toppping)
            drawBody(body: body, topping: toppping)
        }
        if (bodyLength % 2 == 1) {
            drawBody(body: "| |", topping: toppping)
        }
    } else {
        for _ in 1...bodyLength {
            drawBody(body: body, topping: toppping)
        }
    }
}

func drawBBR(bodyLength: Int, body: String, orderedTopping: String, stickLength: Int) {
    var topping: String = orderedTopping
    if (topping.isEmpty){
       topping = " "
    }
    print("길이: \(bodyLength)")
    print("몸통: \(body)")
    print("토핑: \(orderedTopping)")
    print("막대길이: \(stickLength)\n")
    drawFullBody(body: body, toppping: topping, bodyLength: bodyLength)
    drawStick(stickLength: stickLength, stick: "| |")
}

drawBBR(bodyLength: 12, body: "000", orderedTopping: "$", stickLength: 4)
drawBBR(bodyLength: 13, body: "|0|", orderedTopping: "", stickLength: 4)
