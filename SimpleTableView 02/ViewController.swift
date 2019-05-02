import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var animals = ["Dog", "Cat", "Cow", "Pig", "Horse", "Whale"]
    var ages = ["1", "2", "3", "4", "5", "6"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Re", for: indexPath)
        let row = indexPath.row
        
        cell.textLabel?.text = animals[row]
        cell.detailTextLabel?.text = ages[row]
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
}
