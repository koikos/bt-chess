//  Created by Michał Kozik on 27/11/2022.

import Foundation

struct DeviceModel: Identifiable {
    let id: UUID
    let name: String
    let rssi: NSNumber
}
