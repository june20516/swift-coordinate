//
//  MyLine.swift
//  CoordinateCalculator
//
//  Created by Jun ho Lee on 2018. 10. 29..
//  Copyright © 2018년 Codesquad Inc. All rights reserved.
//

import Foundation


struct MyLine: MyFigure {
    
    var points: [MyPoint]
    private let pointA: MyPoint
    private let pointB: MyPoint
    var calculatedResult: Double? {
        return computeDistance(of: self)
    }
    
    init(pointArray: [MyPoint]) {
        self.points = pointArray
        self.pointA = pointArray[0]
        self.pointB = pointArray[1]
    }
    
    func computeDistance(of line: MyLine ) -> Double {
        let xDistance = (line.pointA.x - line.pointB.x)
        let yDistatnce = (line.pointA.y - line.pointB.y)
        let lineDistance = sqrt(square(of: xDistance) + square(of: yDistatnce))
        return lineDistance
    }
}
