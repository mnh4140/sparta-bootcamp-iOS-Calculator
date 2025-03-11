//
//  Calculator.swift
//  Calculator
//
//  Created by NH on 3/11/25.
//

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
