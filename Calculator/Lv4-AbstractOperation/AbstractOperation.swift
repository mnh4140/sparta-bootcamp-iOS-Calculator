//
//  AbstractOperation.swift
//  Calculator
//
//  Created by NH on 3/11/25.
//

// Lv4 추상화 프로토콜 추가
protocol AbstractOperation {
    func calculation(_ num1: Double, _ num2: Double) -> Double?
}
