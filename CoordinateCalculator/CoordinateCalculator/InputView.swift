//
//  InputView.swift
//  CoordinateCalculator
//
//  Created by Jun ho Lee on 2018. 10. 23..
//  Copyright © 2018년 Codesquad Inc. All rights reserved.
//

import Foundation

struct InputView {
    
    // 멘트를 출력하고 값을 입력받음
    static func receiveInput(ment: String) -> String {
        print(ment)
        return readLine() ?? ""
    }
    
    //입력받은 값을 숫자로 바꿔 배열로 반환
    static func makeNumericArrayBy(rawInput: String) -> [Int?] {
        let pointElements = rawInput.components(separatedBy:CharacterSet(charactersIn: "-,")).map { $0.trimmingCharacters(in: CharacterSet(charactersIn: "()")) }
        let numericElements = pointElements.map {Int($0)}
        return numericElements
    }
    
}

