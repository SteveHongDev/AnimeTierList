//
//  SplashView.swift
//  AnimeTierList
//
//  Created by 홍성범 on 3/15/24.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        Image("ATL-logo-light")
            .resizable()
            .scaledToFit()
            .frame(width: 250, height: 250)
            // SwiftUI에서는 accessibilityIdentifier 대신에 accessibilityLabel을 사용할 수 있습니다.
            .accessibilityLabel("ATL Logo")
    }
}

#Preview {
    SplashView()
}
