//

//
//  Created by Yavuz Güner on 20.02.2022.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var selectedMovies : Movies?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedMovies?.name
        yearLabel.text = selectedMovies?.year
        imageView.image = selectedMovies?.image

        // Do any additional setup after loading the view.
    }
    


}
