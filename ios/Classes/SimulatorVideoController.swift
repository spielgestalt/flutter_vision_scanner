import UIKit
enum SimpleAction{
    case cancel
}
typealias SimpleHandler = (SimpleAction) -> Void
class SimulatorVideoController : UIViewController{
    var headerView: UIView!
    var titleLabel: UILabel!
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
        headerView = UIView()
        headerView.backgroundColor = .white
        self.view.addSubview(headerView)
        titleLabel = UILabel()
        titleLabel.text = "Simulator view"
        headerView.addSubview(titleLabel)

        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        headerView.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: headerView.centerYAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: headerView.widthAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalTo: headerView.heightAnchor).isActive = true

    }
}
