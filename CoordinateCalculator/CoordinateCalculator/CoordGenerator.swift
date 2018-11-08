//
//  CoordGenerator.swift
//  CoordinateCalculator
//
//  Created by Jun ho Lee on 02/11/2018.
//  Copyright © 2018 Codesquad Inc. All rights reserved.
//

import Foundation

struct CoordGenerator {
    
    // String에서 좌표값을 뽑아 array로 저장
    static func makeNumericArrayBy(rawInput: String) -> [Int?] {
        let pointElements = rawInput.components(separatedBy:CharacterSet(charactersIn: "-,")).map { $0.trimmingCharacters(in: CharacterSet(charactersIn: "()")) }
        let numericElements = pointElements.map {Int($0)}
        return numericElements
    }
    
    static func pointify(rawInput: String) -> [MyPoint] {
        var myPoints = Array<MyPoint>()
        var numericElements = makeNumericArrayBy(rawInput: rawInput).compactMap { $0 }
        for _ in 0..<numericElements.count / 2 {
            myPoints.append(MyPoint(x: numericElements.removeFirst(), y: numericElements.removeFirst()))
        }
        return myPoints
    }
    
    //좌표값array를 입력받아 figure 결정
    static func classifyFigure(points: [MyPoint]) -> MyFigure {
        switch points.count {
        case 2 :
            return MyLine(pointArray: points)
        case 3 :
            return MyTriangle(pointArray: points)
        default : return points[0]
        }
    }
}
