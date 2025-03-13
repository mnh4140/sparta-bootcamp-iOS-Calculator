//
//  Calculator.swift
//  Calculator
//
//  Created by NH on 3/11/25.
//

// Lv4 연산 기능 메소드를 각 클래스로 분리
class Calculator {
    // 추상화 프로토콜을 매개변수로 사용하여, 프로토콜이 채택된 연산 클래스를 사용할 수 있도록 구현
    func calculation(_ operation: AbstractOperation, _ num1: Double, _ num2: Double) -> Double? {
        return operation.calculation(num1, num2) // 프로토콜 체택된 클래스의 연산 결과를 반환
    }
}
