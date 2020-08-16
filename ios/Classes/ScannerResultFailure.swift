
struct ScannerResultFailure: Codable{
    let runtimeType:String = "failure"
    let code:String
    let message:String
}
