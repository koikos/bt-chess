//  Created by Michał Kozik on 26/11/2022.

import OSLog
import Foundation
import CoreBluetooth

class Scanner: ObservableObject {
    private let logger = Logger()
    private let centralDelegate: ScannerDelegate!
    private let central: CBCentralManager!

    init () {
        self.centralDelegate = ScannerDelegate()
        self.central = CBCentralManager(delegate: self.centralDelegate, queue: nil)
    }

    func startScan() {
        logger.log("Starting scanning")
        central.scanForPeripherals(withServices: nil)
    }

    func stopScan() {
        central.stopScan()
        logger.log("Scanning stopped")
    }
}
