//
//  main.swift
//  Calculator
//
//  Created by NH on 3/10/25.
//

import Foundation

let calculator: Calculator = Calculator()

print("사칙연산 수행")

if let addCalc = calculator.calculation(AddOperation() ,10, 20) {
    print(" > 덧셈\t: \(addCalc)")
}

if let subCalc = calculator.calculation(SubstractOperation(), 10, 20) {
    print(" > 뺄셈\t: \(subCalc)")
}

if let mulCalc = calculator.calculation(MultiplyOperation(), 10, 20) {
    print(" > 곱셈\t: \(mulCalc)")
}

if let divCalc = calculator.calculation(DivideOperation() ,10, 20) {
    print(" > 나눗셈\t: \(divCalc)")
}
