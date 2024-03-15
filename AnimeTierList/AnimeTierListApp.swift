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

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
