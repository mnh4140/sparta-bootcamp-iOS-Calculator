//
//  DivideOperation.swift
//  Calculator
//
//  Created by NH on 3/11/25.
//

// Lv3 나눗셈 연산 클래스
class DivideOperation: AbstractOperation { // Lv4 추상화 프로토콜 채택
    func calculation(_ num1: Double, _ num2: Double) -> Double? { // Lv4 프로토콜 채택으로 형식 준수
        // guard 구문을 사용하여 0일때 예외처리
        guard num2 != 0 else {
            print("Error : 0으로 나눌 수 없습니다.")
            return nil
        }
        return num1 / num2
    }
}
