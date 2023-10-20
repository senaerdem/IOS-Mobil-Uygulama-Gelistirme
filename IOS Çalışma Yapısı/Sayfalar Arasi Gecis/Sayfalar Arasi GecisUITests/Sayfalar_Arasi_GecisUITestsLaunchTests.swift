//
//  Sayfalar_Arasi_GecisUITestsLaunchTests.swift
//  Sayfalar Arasi GecisUITests
//
//  Created by Sena Nur Erdem on 30.01.2023.
//

import XCTest

final class Sayfalar_Arasi_GecisUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
