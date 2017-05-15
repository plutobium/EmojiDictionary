import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDescription: UILabel!
    
    var data:DetailData = DetailData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = data.emoji
        emojiDescription.text = data.description
        self.title = data.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
