//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    func add(lhs: (Int,Int), rhs: (Int,Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    func add(lhs: [String:Int], rhs: [String:Int]) -> [String:Int] {
        return ["x": lhs["x"]! + rhs["x"]!, "y": lhs["y"]! + rhs["y"]!]
    }
    
    func add (_ numArr: [Int]) -> Int {
        var sum = 0
        for val in numArr {
            sum += val
        }
        return sum
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    func subtract(lhs: (Int,Int), rhs: (Int,Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    func subtract(lhs: [String:Int], rhs: [String:Int]) -> [String:Int] {
        return ["x": lhs["x"]! - rhs["x"]!, "y": lhs["y"]! - rhs["y"]!]
    }
    
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func multiply(_ numArr: [Int]) -> Int {
        var sum = 1
        for val in numArr {
            sum *= val
        }
        return sum
    }
    
    func count(_ numArr: [Int]) -> Int {
        return numArr.count
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    func mathOp(lhs: Int, rhs: Int, op: (Int,Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var total = beg
        for arg in args {
            total = op(total, arg)
        }
        return total
    }
    
    func avg(_ numArr: [Int]) -> Int {
        return (add(numArr) / numArr.count)
    }

    
}
