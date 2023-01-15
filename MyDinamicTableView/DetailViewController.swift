//
//  DetailViewController.swift
//  MyDinamicTableView
//
//  Created by nuri on 15/01/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var descLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var academyImage: UIImageView!
    
    var academy: AcademyModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let result = academy {
            nameLabel.text = result.name
            descLabel.text = result.description
            academyImage.image = result.image
        }
    }
}
