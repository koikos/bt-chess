//  Created by Michał Kozik on 27/11/2022.

import SwiftUI

struct DeviceRow: View {
    @State var device: DeviceModel

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Name: \(device.name)")
                    .font(.headline)
                    .foregroundColor(.primary)
                Spacer()
                Text("RSSI: \(device.rssi)")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .padding(.bottom, 5)

            Text("UUID: \(device.id)")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 8)
            .stroke(.black, lineWidth: 2))
    }
}

struct Device_Previews: PreviewProvider {
    static let device = DeviceModel(id: UUID(), name: "Some name", rssi: -15)

    static var previews: some View {
        DeviceRow(device: device)
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
