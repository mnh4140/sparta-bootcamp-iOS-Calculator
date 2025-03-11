//
//  main.swift
//  Calculator
//
//  Created by NH on 3/10/25.
//

import Foundation

class Calculator {
   // 더하기
    func add(_ num1: Double, _ num2: Double) -> Double {
       return num1 + num2
   }
   
   // 빼기
   func sub(_ num1: Double, _ num2: Double) -> Double {
       return num1 - num2
   }
   
   // 곱하기
   func mul(_ num1: Double, _ num2: Double) -> Double {
       return num1 * num2
   }
   
   // 나누기
    func div(_ num1: Double, _ num2: Double) -> Double? {
        // guard 구문을 사용하여 0일때 예외처리
        guard num2 != 0 else {
            print("Error : 0으로 나눌 수 없습니다.")
            return nil
        }
        return num1 / num2
    }
    
    // Lv2 나머지 연산 추가
    func remainder(_ num1: Int, _ num2: Int) -> Int? {
        // guard 구문을 사용하여 0일때 예외처리
        guard num2 != 0 else {
            print("Error : 0으로 나머지 연산을 수행할 수 없습니다.")
            return nil
        }
        return num1 % num2
    }
}



let calculator = Calculator() // 인스턴스 생성하여 변수에 할당

print("사직연산 결과")

// 사칙 연산 테스트
let sum = calculator.add(10, 20)
print(" > 더하기 결과:", sum)

let difference = calculator.sub(30, 20)
print(" > 빼기 결과:", difference)

let product = calculator.mul(10, 20)
print(" > 곱하기 결과:", product)

// if let을 사용해 옵셔널 언래핑
if let quotient = calculator.div(60, 20) {
    print(" > 나누기 결과:", quotient)
}

// Lv1 예외 상황: num2가 0일 때
print("\n예외상황 처리 확인")

// if let을 사용해 옵셔널 언래핑
if let result1 = calculator.div(6, 0) {
    print(" > 나누기 결과:", result1)  // 실행 안 됨 (에러 메시지만 출력)
}

// Lv2 나머지 연산 테스트
print("\n나머지 연산 테스트")

if let result = calculator.remainder(6, 3) {
    print(" > 나머지 연산: \(result)") // 0
}

if let result = calculator.remainder(5, 3) {
    print(" > 나머지 연산: \(result)") // 2
}

// Lv2 예외처리 테스트
print("\n예외상황 처리 확인")

if let result = calculator.remainder(6, 0) {
    print(" > 나머지 연산: \(result)") // 실행되지 않음 (에러 메시지 출력)
}
