//
//  Calculator.swift
//  Calculator
//
//  Created by NH on 3/11/25.
//

class Calculator {
    //
    let operation: AbstractOperation?
    
    // 초기화
    init(operation: AbstractOperation) {
        self.operation = operation
    }
    
    func calculation(_ num1: Double, _ num2: Double) -> Double? {
        return operation?.calculation(num1, num2)
    }
}
