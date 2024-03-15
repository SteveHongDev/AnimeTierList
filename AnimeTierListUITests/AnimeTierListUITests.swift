//
//  AnimeTierListUITests.swift
//  AnimeTierListUITests
//
//  Created by 홍성범 on 3/15/24.
//

import XCTest

final class AnimeTierListUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSplashViewDisplaysLogoImage() throws {
        let app = XCUIApplication()
        // 'ATL Logo' 라벨을 가진 이미지가 화면에 존재하는지 확인합니다.
        let logoImage = app.images["ATL Logo"]
        XCTAssertTrue(logoImage.exists, "The ATL-logo-light image should be displayed on the SplashView.")
    }
    
    func testSplashViewTransitionToContentView() {
        let app = XCUIApplication()

        // SplashView가 사라진 후 ContentView가 표시될 것으로 예상되는 시간을 기다립니다.
        // 실제 앱에서는 SplashView가 보이는 시간에 맞춰 조정해야 합니다.
        sleep(3)
        
        // "Add Item" 버튼이 ContentView에 표시되는지 확인합니다.
        let addItemButton = app.buttons["Add Item"]
        XCTAssertTrue(addItemButton.exists, "Add Item button should be present in ContentView after SplashView disappears.")
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
