//
//  SubstractOperation.swift
//  Calculator
//
//  Created by NH on 3/11/25.
//

// Lv3 뺄셈 연산 클래스
class SubstractOperation: AbstractOperation { // Lv4 추상화 프로토콜 채택
    func calculation(_ num1: Double, _ num2: Double) -> Double? { // Lv4 프로토콜 채택으로 형식 준수
        return num1 - num2
    }
}
