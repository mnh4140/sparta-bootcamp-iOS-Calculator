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
   func add(_ num1: Int, _ num2: Int) {
       print("num1 + num2 = ", num1 + num2)
   }
   
   // 빼기
   func sub(_ num1: Int, _ num2: Int) {
       print("num1 - num2 = ", num1 - num2)
   }
   
   // 곱하기
   func mul(_ num1: Int, _ num2: Int) {
       print("num1 * num2 = ", num1 * num2)
   }
   
   // 나누기
   func div(_ num1: Int, _ num2: Int) {
       print("num1 / num2 = ", num1 / num2)
   }
}

let calculator = Calculator() // 인스턴스 생성하여 변수에 할당

calculator.add(10, 5) // 10 + 5 =  15
calculator.sub(2, 7) // 2 - 7 =  -5
calculator.mul(3, 9) // 3 * 9 =  27
calculator.div(6, 4) // 6 / 4 =  1


