//
//  DivideOperation.swift
//  Calculator
//
//  Created by NH on 3/11/25.
//

class DivideOperation: AbstractOperation {
    func calculation(_ num1: Double, _ num2: Double) -> Double? {
        // guard 구문을 사용하여 0일때 예외처리
        guard num2 != 0 else {
            print("Error : 0으로 나눌 수 없습니다.")
            return nil
        }
        return num1 / num2
    }
}
