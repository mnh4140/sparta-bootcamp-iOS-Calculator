//
//  main.swift
//  Calculator
//
//  Created by NH on 3/10/25.
//

import Foundation

// 1. Lv1 `03/10 까지`
//     - [ ]  더하기, 빼기, 나누기, 곱하기 연산을 수행할 수 있는 Calculator 클래스를 만들기
//     - [ ]  생성한 클래스를 이용하여 연산을 진행하고 출력

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

let quotient = calculator.div(60, 20)
print(" > 나누기 결과:", quotient)

// 예외 상황: num2가 0일 때
print("\n예외상황 처리 확인")

let result1 = calculator.div(6, 0)
print(" 나누기 결과:", result1)  // 실행 안 됨 (에러 메시지만 출력)

