//
//  main.swift
//  Calculator
//
//  Created by NH on 3/10/25.
//

import Foundation

print("사칙연산 수행")

if let addCalc = Calculator(operation: AddOperation()).calculation(10, 20) {
    print(" > 덧셈\t: \(addCalc)")
}

if let subCalc = Calculator(operation: SubstractOperation()).calculation(10, 20) {
    print(" > 뺄셈\t: \(subCalc)")
}

if let mulCalc = Calculator(operation: MultiplyOperation()).calculation(10, 20) {
    print(" > 곱셈\t: \(mulCalc)")
}

if let divCalc = Calculator(operation: DivideOperation()).calculation(10, 20) {
    print(" > 나눗셈\t: \(divCalc)")
}
