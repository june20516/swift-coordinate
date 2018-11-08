//
//  MyTriangle.swift
//  CoordinateCalculator
//
//  Created by Jun ho Lee on 08/11/2018.
//  Copyright © 2018 Codesquad Inc. All rights reserved.
//

import Foundation

struct MyTriangle: MyFigure {
    var points: [MyPoint]

    var calculatedResult: Double?

    private let pointA: MyPoint
    private let pointB: MyPoint
    private let pointC: MyPoint

    private let lineAB : MyLine
    private let lineBC : MyLine
    private let lineAC : MyLine

    init(pointArray: [MyPoint]) {
        self.points = pointArray
        self.pointA = pointArray[0]
        self.pointB = pointArray[1]
        self.pointC = pointArray[2]
        self.lineAB = MyLine(pointArray: [self.pointA, self.pointB])
        self.lineBC = MyLine(pointArray: [self.pointB, self.pointC])
        self.lineAC = MyLine(pointArray: [self.pointA, self.pointC])
    }
    
    func computeArea(of triangle: MyTriangle) -> Double {
        let squareOfLineAB = pow(triangle.lineAB.calculatedResult ?? 0, 2)
        let squareOfLineBC = pow(triangle.lineBC.calculatedResult ?? 0, 2)
        let squareOfLineAC = pow(triangle.lineAC.calculatedResult ?? 0, 2)
        let area = sqrt( (4 * squareOfLineAB * squareOfLineBC) - pow((squareOfLineAB + squareOfLineBC - squareOfLineAC),2) )
        return area
    }
    
}
