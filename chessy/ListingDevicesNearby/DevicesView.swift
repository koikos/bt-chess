//
//  DevicesView.swift
//  chessy
//
//  Created by Michał Kozik on 26/11/2022.
//

import SwiftUI

struct DevicesView: View {
    @StateObject var scanner = Scanner()

    var body: some View {
        VStack(spacing: 100) {
            Button("Scan", action: scanner.startScan)
            Button("Stop", action: scanner.stopScan)
        }
        .buttonStyle(.bordered)
        .padding()
    }
}

struct DevicesView_Previews: PreviewProvider {
    static var previews: some View {
        DevicesView()
    }
}
