//
//  Calculator.swift
//  Calculator
//
//  Created by NH on 3/11/25.
//

class Calculator {
    func calculation(_ operation: AbstractOperation, _ num1: Double, _ num2: Double) -> Double? {
        return operation.calculation(num1, num2)
    }
}
