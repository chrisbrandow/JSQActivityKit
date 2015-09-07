//
//  Created by Jesse Squires
//  http://www.jessesquires.com
//
//
//  Documentation
//  http://www.jessesquires.com/JSQActivityKit
//
//
//  GitHub
//  https://github.com/jessesquires/JSQActivityKit
//
//
//  License
//  Copyright (c) 2015 Jesse Squires
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

import UIKit
import XCTest

import JSQActivityKit


class JSQActivityKitTests: XCTestCase {

    func test_SafariActivityInit() {
        let safari = SafariActivity()

        XCTAssertEqual(safari.activityTitle(), "Open In Safari")
        XCTAssertEqual(safari.activityType(), String(SafariActivity.self))
        XCTAssertEqual(SafariActivity.activityCategory(), UIActivityCategory.Action)
        XCTAssertNotNil(safari.activityImage())
    }

    func test_SafariActivity_CanPerformAction_Success() {
        let safari = SafariActivity()

        let items = [NSURL(string: "http://www.jessesquires.com")!]

        XCTAssertTrue(safari.canPerformWithActivityItems(items))
    }

    func test_SafariActivity_CanPerformAction_Failure() {
        let safari = SafariActivity()

        let items = ["not a url"]

        XCTAssertFalse(safari.canPerformWithActivityItems(items))
    }
}