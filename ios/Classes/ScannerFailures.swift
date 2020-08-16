
enum ScannerFailures: Error{
    case simulator
    case scannError(error:Error)
    case canceled
    case scannerNoImageFound
}
