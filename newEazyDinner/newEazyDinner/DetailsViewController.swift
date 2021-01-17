//
//  DetailsViewController.swift
//  newEazyDinner
//
//  Created by Ravi Prakash Pandey on 17/01/21.
//

import UIKit

class DetailsViewController: UIViewController {


    @IBOutlet weak var imageView: UIImageView!
    var details:listTable?
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()


        let baseUrl = "https://api.opendota.com"+(details?.img)!
        let url = URL(string: "\(baseUrl)")
        imageView.downloaded(from: url!)
        print("raviurl \(url)")
        nameLabel.text = details?.localized_name
        //print("ravics.mnnit \(details?.localized_name)")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
