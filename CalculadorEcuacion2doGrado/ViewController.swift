//
//  ViewController.swift
//  CalculadorEcuacion2doGrado
//
//  Created by max on 8/24/21.
//

import UIKit

class ViewController: UIViewController {
    let ecuacionCalculadora = EcuacionCalculadora()
    @IBOutlet weak var abox: UITextField!
    @IBOutlet weak var bbox: UITextField!
    @IBOutlet weak var cbox: UITextField!
    @IBOutlet weak var raiz1box: UITextField!
    @IBOutlet weak var raiz2box: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func resolve(_ sender: UIButton) {
        raiz1box.text = ""
        raiz2box.text = ""
        if let A = abox.text {
            if !A.isEmpty {
                if let B = bbox.text {
                    if !B.isEmpty {
                        if let C = cbox.text {
                            if !C.isEmpty {
                                let solution = ecuacionCalculadora.calcular(ecuacion: Ecuacion(A:Float16(A)!, B:Float16(B)!, C:Float16(C)!, R1:Float16(0), R2:Float16(0)))
                                
                                raiz1box.text = String(solution.R1)
                                raiz2box.text = String(solution.R2)
                            }
                        }
                    }
                }
            }
        }
        
    }
    
}

