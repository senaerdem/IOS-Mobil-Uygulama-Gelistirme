//
//  Texfield_ile_PickerView_Go_ru_ntu_lemeUITestsLaunchTests.swift
//  Texfield ile PickerView GörüntülemeUITests
//
//  Created by Sena Nur Erdem on 24.02.2023.
//

import XCTest

final class Texfield_ile_PickerView_Go_ru_ntu_lemeUITestsLaunchTests: XCTestCase {

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
