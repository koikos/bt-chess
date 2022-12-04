//  Created by Michał Kozik on 26/11/2022.

import SwiftUI

struct DevicesView: View {
    @StateObject var scanner = Scanner()

    var body: some View {
        VStack {
            HStack {
                Text("Devices")
                    .font(.headline)
                Spacer()
                Button("Scan", action: scanner.startScan)
                    .buttonStyle(.bordered)

                Button("Stop", action: scanner.stopScan)
                    .buttonStyle(.bordered)
            }
            .padding()
            Divider()
            ScrollView {
                VStack {
                    ForEach (scanner.devices) { device in
                        DeviceRow(device: device)
                    }
                }
                .padding()
            }
        }
    }
}

struct DevicesView_Previews: PreviewProvider {
    static var previews: some View {
        DevicesView()
    }
}
