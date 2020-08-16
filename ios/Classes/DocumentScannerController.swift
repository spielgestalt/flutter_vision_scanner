import Vision
typealias ScannerHandler = (Result<String, ScannerFailures>) -> Void
class DocumentScannerController{
    var scannerHandler:ScannerHandler?

    init() {
        setupText()
    }

    func pickDocument(image:UIImage, completionHandler: @escaping ScannerHandler){
        self.scannerHandler = completionHandler
        guard let cgImage = image.cgImage else {
            completionHandler(.failure(.scannerNoImageFound))
            return }
        textRecognitionWorkQueue.async {
            let requestHandler = VNImageRequestHandler(cgImage: cgImage, options: [:])
            do {
                try requestHandler.perform([self.textRecognitionRequest])
            } catch let error{
                if let handler = self.scannerHandler{
                    handler(.failure(ScannerFailures.scannError(error: error)))
                }
                print(error)
            }
        }
    }
    var textRecognitionRequest = VNRecognizeTextRequest(completionHandler: nil)
    private let textRecognitionWorkQueue = DispatchQueue(label: "TextRecognitionQueue", qos: .userInitiated, attributes: [], autoreleaseFrequency: .workItem)

    func setupText(){
        textRecognitionRequest = VNRecognizeTextRequest { (request, error) in
            guard let observations = request.results as? [VNRecognizedTextObservation] else { return }

            var detectedText = ""
            var boundingBoxes = [CGRect]()
            for observation in observations {
                guard let topCandidate = observation.topCandidates(1).first else { return }

                detectedText += topCandidate.string
                detectedText += "\n"

                do {
                    guard let rectangle = try topCandidate.boundingBox(for: topCandidate.string.startIndex..<topCandidate.string.endIndex) else { return }
                    boundingBoxes.append(rectangle.boundingBox)
                } catch (let error){
                    // You should handle errors appropriately in your app
                    if let handler = self.scannerHandler{
                        handler(.failure(ScannerFailures.scannError(error: error)))
                    }
                }
            }

            DispatchQueue.main.async {
                if let handler = self.scannerHandler{
                    handler(.success(detectedText))
                }
            }
        }
        textRecognitionRequest.recognitionLevel = .accurate
    }
}
