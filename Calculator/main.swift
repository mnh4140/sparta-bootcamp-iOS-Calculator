//
//  main.swift
//  Calculator
//
//  Created by NH on 3/10/25.
//

import Foundation

class Calculator {
    // Lv3 클래스 관계 맺기
    let addOperation: AddOperation = AddOperation()
    let substractOperation: SubstractOperation = SubstractOperation()
    let multiplyOperation: MultiplyOperation = MultiplyOperation()
    let divideOperation: DivideOperation = DivideOperation()

    
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

// Lv3 클래스 추가
class AddOperation {
    func add(_ num1: Double, _ num2: Double) -> Double{
        return num1 + num2
    }
}

class SubstractOperation {
    func sub(_ num1: Double, _ num2: Double) -> Double{
        return num1 - num2
    }
}

class MultiplyOperation {
    func mul(_ num1: Double, _ num2: Double) -> Double{
        return num1 * num2
    }
}

class DivideOperation {
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

print("1. 사직연산 결과")

// 사칙 연산 테스트
let sumReult = calculator.addOperation.add(11.2, 9.8)
print(" > 더하기 결과:", sumReult) //  더하기 결과: 21.0

let differenceResult = calculator.substractOperation.sub(1.4, 8.5)
print(" > 빼기 결과:", differenceResult) // 빼기 결과: -7.1

let productResult = calculator.multiplyOperation.mul(3.3, 5.6)
print(" > 곱하기 결과:", productResult) // 곱하기 결과: 18.479999999999997

if let quotientResult1 = calculator.divideOperation.div(96.4, 22) {
    print(" > 나누기 결과:", quotientResult1) // 나누기 결과: 4.381818181818182
}

// Lv1 예외 상황: num2가 0일 때
print("\n2. 나눗셈 예외상황 처리 확인")

if let quotientResult2 = calculator.divideOperation.div(10, 0) {
    print(" > 나누기 결과:", quotientResult2) // 실행 안 됨 (에러 메시지만 출력)
}


// Lv2 나머지 연산 테스트
print("\n3. 나머지 연산 테스트")

if let result = calculator.remainder(6, 3) {
    print(" > 나머지 연산: \(result)") // 0
}

if let result = calculator.remainder(5, 3) {
    print(" > 나머지 연산: \(result)") // 2
}

// Lv2 예외처리 테스트
print("\n4. 나머지 연산 예외상황 처리 확인")

if let result = calculator.remainder(6, 0) {
    print(" > 나머지 연산: \(result)") // 실행되지 않음 (에러 메시지 출력)
}
