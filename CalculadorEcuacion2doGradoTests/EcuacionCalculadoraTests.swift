//
//  EcuacionCalculadoraTests.swift
//  CalculadorEcuacion2doGradoTests
//
//  Created by max on 9/2/21.
//

import XCTest
@testable import CalculadorEcuacion2doGrado

class EcuacionCalculadoraTests: XCTestCase {

    let ecuacionCalculadora = EcuacionCalculadora()
    
    func testCalculadoraEcuacion() throws {
        let input = Ecuacion(A:0,B:0,C:0,R1:0,R2:0)
        
        let result = ecuacionCalculadora.calcular(ecuacion: input)
        
        let expectedValue: Float16 = 0

        
        XCTAssertEqual(result.A, expectedValue)
        XCTAssertEqual(result.B, expectedValue)
        XCTAssertEqual(result.C, expectedValue)
        XCTAssertEqual(result.R1, expectedValue)
        XCTAssertEqual(result.R2, expectedValue)
    }
    
    func testCalculadoraEcuacionSolution() throws {
        let input = Ecuacion(A:5,B:6,C:1,R1:0,R2:0)
        
        let result = ecuacionCalculadora.calcular(ecuacion: input)
        
        let expectedValueR1: Float16 = -0.2
        let expectedValueR2: Float16 = -1

        XCTAssertEqual(result.R1, expectedValueR1)
        XCTAssertEqual(result.R2, expectedValueR2)
    }



}
