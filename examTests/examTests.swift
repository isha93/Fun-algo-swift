//
//  examTests.swift
//  examTests
//
//  Created by isa nur fajar on 08/05/19.
//  Copyright © 2019 isa nur fajar. All rights reserved.
//

import XCTest
@testable import exam

class examTests: XCTestCase {
    let controllerSumMulti = SumAndMultyplyController.init()
    let controllerPrime = PrimeNumberController.init()
    let controllerFib = FibController.init()
    let value1 = 3
    let value2 = 2
    
    func testSumFunc(){
        let result = controllerSumMulti.summaryFunc(value1: value1, value2: value2)
        XCTAssertEqual(result, 5)
    }
    func testMulti() {
        let result = controllerSumMulti.multiplyFunc(value1: value1, value2: value2)
        XCTAssertEqual(result, 6)
    }
    func testPrime() {
        let result = controllerPrime.primeNumber(value: value1)
        XCTAssertEqual(result, true)
    }
    func testFib(){
        let result = controllerFib.fib(value: 4)
        XCTAssertEqual(result, [0,1,1,2])
    }
}
