import UIKit
enum SimpleAction{
    case cancel
    case picked(url:URL)
}
typealias SimpleHandler = (SimpleAction) -> Void
class SimulatorScannerController : UIViewController{

    let vStack = UIStackView()
    var handler: SimpleHandler?
    init(handler: @escaping SimpleHandler){
        self.handler = handler
        super.init(nibName: nil, bundle: nil)
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.handler = nil
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        let titleLabel = UILabel()
        let scanButton =  UIButton()
        let cancleButton = UIButton()
        let fillerView = UIView()

        self.view.addSubview(vStack)
        self.view.backgroundColor = .white
        vStack.translatesAutoresizingMaskIntoConstraints = false
        vStack.alignment = .center
        vStack.distribution = .fill
        vStack.axis = .vertical
        vStack.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        vStack.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        vStack.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        vStack.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true

        titleLabel.text = "Simulator view"

        scanButton.setTitle("Scan", for: .normal)
        scanButton.setTitleColor(.systemBlue, for: .normal)
        scanButton.addTarget(self, action: #selector(scanAction), for: .touchUpInside)

        cancleButton.setTitle("Cancle", for: .normal)
        cancleButton.setTitleColor(.systemBlue, for: .normal)
        cancleButton.addTarget(self, action: #selector(cancleAction), for: .touchUpInside)

        let footterLable = UILabel()
        footterLable.text = "footer"
        vStack.addArrangedSubview(titleLabel)
        vStack.addArrangedSubview(scanButton)
        vStack.addArrangedSubview(cancleButton)
        vStack.addArrangedSubview(footterLable)
        vStack.addArrangedSubview(fillerView)


    }
    @objc func cancleAction(sender: UIButton!) {
        handler?(.cancel)
        self.dismiss(animated: true)
    }
    @objc func scanAction(sender: UIButton!) {
        handler?(.picked(url: URL(string: "pickingfile")!))
        self.dismiss(animated: true)
    }
}
