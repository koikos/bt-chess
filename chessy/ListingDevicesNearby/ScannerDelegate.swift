//  Created by Michał Kozik on 26/11/2022.

import OSLog
import Foundation
import CoreBluetooth

class ScannerDelegate: NSObject, CBCentralManagerDelegate {
    private let logger = Logger()

    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        logger.info("Central Manager updated its state to: \(String(describing: central.state))")
    }

    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral,
                        advertisementData: [String : Any], rssi RSSI: NSNumber) {
        let discoveredPeripheral = peripheral
        let discoveredRSSI = RSSI
        logger.log("Discovered device: UUID: \(discoveredPeripheral.identifier) \tRSSI: \(discoveredRSSI)")
    }
}
