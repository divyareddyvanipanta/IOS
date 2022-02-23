//
//  Vanipanta_Exam01Part02UITestsLaunchTests.swift
//  Vanipanta_Exam01Part02UITests
//
//  Created by Vanipanta,Divya Reddy on 2/22/22.
//

import XCTest

class Vanipanta_Exam01Part02UITestsLaunchTests: XCTestCase {

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
