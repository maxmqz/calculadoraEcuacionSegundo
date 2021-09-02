//
//  Ecuacion.swift
//  CalculadorEcuacion2doGrado
//
//  Created by max on 9/1/21.
//

import Foundation

public class Ecuacion {
    public let A: Float16
    public let B: Float16
    public let C: Float16
    public var R1: Float16
    public var R2: Float16
    
    public init(A: Float16, B: Float16, C: Float16, R1: Float16, R2: Float16){
        self.A = A
        self.B = B
        self.C = C
        self.R1 = R1
        self.R2 = R2
    }
}
