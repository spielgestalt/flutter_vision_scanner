
struct ScannerResult: Codable{
    let scannerStatus:ScannerStatus
    let filePath:String?
    let ocrText:String?
}
