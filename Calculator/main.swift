//
//  main.swift
//  Calculator
//
//  Created by NH on 3/10/25.
//

import Foundation

let calculator: Calculator = Calculator() // Calculator 클래스 인스턴스 생성

print("사칙연산 수행")

// 연산 수행 방법
// Calculator 인스턴스의 calculation 메소드를 사용하여,
// 추상화 프로토콜을 채택한 연산 클래스의 연산 메소드를 사용하여 연산결과를 반환

// 옵셔널 언래핑을 위해 if let 사용
if let addCalc = calculator.calculation(AddOperation() ,10, 20) {
    print(" > 덧셈\t: \(addCalc)") // > 덧셈    : 30.0
}

if let subCalc = calculator.calculation(SubstractOperation(), 10, 20) {
    print(" > 뺄셈\t: \(subCalc)") // > 뺄셈    : -10.0
}

if let mulCalc = calculator.calculation(MultiplyOperation(), 10, 20) {
    print(" > 곱셈\t: \(mulCalc)") // > 곱셈    : 200.0
}

if let divCalc = calculator.calculation(DivideOperation() ,10, 20) {
    print(" > 나눗셈\t: \(divCalc)") // > 나눗셈    : 0.5
}

// 예외 상황 테스트 (0으로 나누기)
if let errorTest = calculator.calculation(DivideOperation(), 6, 0){
    print(errorTest) // Error : 0으로 나눌 수 없습니다.
}

// 결과
// 사칙연산 수행
//  > 덧셈    : 30.0
//  > 뺄셈    : -10.0
//  > 곱셈    : 200.0
//  > 나눗셈    : 0.5
// Error : 0으로 나눌 수 없습니다.
