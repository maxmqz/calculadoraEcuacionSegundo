//
//  EcuacionCalculadora.swift
//  CalculadorEcuacion2doGrado
//
//  Created by max on 9/1/21.
//

import Foundation

public class EcuacionCalculadora{
    public func calcular(ecuacion: Ecuacion) -> Ecuacion {
        if(ecuacion.A == 0 || (ecuacion.A == 0 && ecuacion.B == 0 && ecuacion.C == 0) ){
            return Ecuacion(A: ecuacion.A, B: ecuacion.B, C: ecuacion.C, R1: 0.0, R2: 0.0)
        }
        
        let discriminant: Float16
        discriminant = ecuacion.B * ecuacion.B - 4 * ecuacion.A * ecuacion.C
        
        if(discriminant < 0){
            return Ecuacion(A: ecuacion.A, B: ecuacion.B, C: ecuacion.C, R1: 0.0, R2: 0.0)
        }
        ecuacion.R1 = (-ecuacion.B + sqrt(discriminant)) / (2 * ecuacion.A)
        ecuacion.R2 = (-ecuacion.B - sqrt(discriminant)) / (2 * ecuacion.A)
        return Ecuacion(A: ecuacion.A, B: ecuacion.B, C: ecuacion.C, R1: ecuacion.R1, R2: ecuacion.R2)
    }
}

