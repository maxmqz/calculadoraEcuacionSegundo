//
//  CalculadorEcuacion2doGradoUITests.swift
//  CalculadorEcuacion2doGradoUITests
//
//  Created by max on 8/24/21.
//

import XCTest

class CalculadorEcuacion2doGradoUITests: XCTestCase {

    func testCalculadoraEcuacion() throws {
        let app = XCUIApplication()
        app.launch()
        
        let abox = app.textFields["abox"]
        let bbox = app.textFields["bbox"]
        let cbox = app.textFields["cbox"]
        let r1Textfield = app.textFields["raiz1box"]
        let r2Textfield = app.textFields["raiz2box"]

        abox.tap()
        abox.typeText("5")
        bbox.tap()
        bbox.typeText("6")
        cbox.tap()
        cbox.typeText("1")
        app.buttons["Resolver"].tap()
        
        print("Raiz 1 text field " + (r1Textfield.value as! String))
        XCTAssertEqual(r1Textfield.value as! String, "-0.2")
        print("Raiz 2 text field " + (r2Textfield.value as! String))
        XCTAssertEqual(r2Textfield.value as! String, "-1.0")
        
    }

/* */

}
