//  Created by Michał Kozik on 26/11/2022.

import OSLog
import Foundation
import CoreBluetooth

class Scanner: NSObject, ObservableObject {
    @Published var devices: [DeviceModel] = []

    private let logger = Logger()
    private var central: CBCentralManager = CBCentralManager()

    override init () {
        super.init()
        self.central = CBCentralManager(delegate: self, queue: .main)
    }

    func startScan() {
        logger.log("Starting scanning")
        central.scanForPeripherals(withServices: nil)
    }

    func stopScan() {
        central.stopScan()
        logger.log("Scanning stopped")
    }

    private func addDiscoveredPeripheral(peripheral: CBPeripheral, rssi: NSNumber) {
        let deviceID: UUID = peripheral.identifier
        let deviceName: String = peripheral.name ?? "Some device"
        let device = DeviceModel(id: deviceID, name: deviceName, rssi: rssi)
        devices.append(device)
    }
}

extension Scanner: CBCentralManagerDelegate {
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        logger.info("Central Manager updated its state to: \(String(describing: central.state))")
    }

    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral,
                        advertisementData: [String : Any], rssi RSSI: NSNumber) {
        logger.log("Discovered device: UUID: \(peripheral.identifier) \tRSSI: \(RSSI)")
        self.addDiscoveredPeripheral(peripheral: peripheral, rssi: RSSI)
    }
}
