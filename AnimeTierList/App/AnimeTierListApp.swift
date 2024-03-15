//
//  AnimeTierListApp.swift
//  AnimeTierList
//
//  Created by 홍성범 on 3/15/24.
//

import SwiftUI

@main
struct AnimeTierListApp: App {
    let persistenceController = PersistenceController.shared
    @State private var isShowingSplash = true

    var body: some Scene {
        WindowGroup {
            if isShowingSplash {
                SplashView()
                    .onAppear {
                        // 3초 후에 SplashView를 숨기고 ContentView를 표시합니다.
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            isShowingSplash = false
                        }
                    }
            } else {
                ContentView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
        }
    }
}
