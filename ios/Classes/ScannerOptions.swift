enum ScannerMode: String, Codable{
    case withOcr
    case withoutOcr
}
struct ScannerOptions: Codable {
    let mode: ScannerMode
    let simulatorImagePath:String?
    let simulatorImageKeyPath: String?
}
