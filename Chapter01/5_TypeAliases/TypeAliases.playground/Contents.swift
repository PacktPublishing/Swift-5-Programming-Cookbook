import UIKit

// 1
typealias VolumeAmplifier = UInt32
var LowVolume = VolumeAmplifier.min // same as UInt32.min
var HighVolume = VolumeAmplifier.max // same as UInt32.max

// 2
typealias JSONString = [String: Any]
typealias CustomDictionary = Dictionary<Float, Double>

// 3
typealias CompletionBlock = ((Int) -> (String))

// 4
typealias VolumeAmplifiers = Array<VolumeAmplifier>

// 5
typealias GridPointTuple = (x: Double, y: Double)
var point = GridPointTuple(10.5, 20.5)
point.x
point.y

// 6
typealias CombinedProtocol = UITableViewDelegate & UITableViewDataSource
// class LoginView: UIViewController {}
// extension LoginView: CombinedProtocol {}

// There's more...

class TableViewController: UIViewController {
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
    }
}

private typealias ViewLifeCycle = TableViewController
extension ViewLifeCycle {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

private typealias ViewSetup = TableViewController
extension ViewSetup {
    func setupView() {
        // ...
    }
    
    func configDesign() {
        // ...
    }
}

private typealias PrivateFunctions = TableViewController
extension PrivateFunctions {
    func privateFunction() {
        // ...
    }
    
    func anotherPrivateFunction() {
        // ...
    }
}

private typealias PublicFunctions = TableViewController
extension PublicFunctions {
    func publicFunction () {
        // ...
    }
    
    func anotherPublicFunction() {
        // ...
    }
}

private typealias TableViewDataSource = TableViewController
extension TableViewDataSource: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        return cell
    }
}

private typealias TableViewDelegate = TableViewController
extension TableViewDelegate: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 0
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // ...
    }
}

private typealias Navigation = TableViewController
extension Navigation {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // ...
    }
}
