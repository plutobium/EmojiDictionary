import UIKit

class ViewController:   UIViewController,
                        UITableViewDataSource,
                        UITableViewDelegate {

    @IBOutlet weak var overviewTableView: UITableView!
    

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // set dataSource and delegate to self
        overviewTableView.dataSource = self
        overviewTableView.delegate   = self
        
        // fill data
        // load with https://github.com/Alamofire/Alamofire
        
        let emojis = ["😇","😍","😩","😱","😎"]
        
        var descriptions = [String]()
        descriptions.append("Holy Moly")
        descriptions.append("Love Eyes")
        descriptions.append("Terribly sad")
        descriptions.append("Scared!")
        descriptions.append("Cool")
        
        for (index, emoji) in emojis.enumerated() {
            let dataItem = DetailData("test")
            dataItem.emoji = emoji
            dataItem.description = descriptions[index]
            data.append(dataItem)
        }
        
    }
    
    // data for the table view
    var data = [DetailData]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return length of the data array
        return data.count
    }
    
    func tableView(_ tableView: UITableView,
                     cellForRowAt indexPath: IndexPath) ->
                     UITableViewCell {
        // indexPath.row is index and array holds the stuff
        let cell = UITableViewCell()
        cell.textLabel?.text = data[indexPath.row].name
        return cell
    }
    
    // before the Seqgue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // sender comes from performSegue
        let detailViewController = segue.destination as! DetailViewController
        detailViewController.data = sender as! DetailData
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // do the segue with id "moveSegue"
        overviewTableView.deselectRow(at: indexPath, animated: false)
        let dataItem = data[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: dataItem)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

