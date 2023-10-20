//
//  Veri_Transferi_Perform_Segue_Yaygin_Yontem_UITestsLaunchTests.swift
//  Veri Transferi Perform Segue(Yaygin Yontem)UITests
//
//  Created by Sena Nur Erdem on 2.02.2023.
//

import XCTest

final class Veri_Transferi_Perform_Segue_Yaygin_Yontem_UITestsLaunchTests: XCTestCase {

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
