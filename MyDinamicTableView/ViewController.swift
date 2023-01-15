//
//  ViewController.swift
//  MyDinamicTableView
//
//  Created by nuri on 02/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var AcademyTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Prepare data to the TableView
        AcademyTableView.dataSource = self
        AcademyTableView.delegate = self
        
        
        AcademyTableView.register(
            UINib(nibName: "AcademyTableViewCell", bundle: nil),
            forCellReuseIdentifier: "AcademyCell"
        )
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyAcademyData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(
            withIdentifier: "AcademyCell",
            for: indexPath
        ) as? AcademyTableViewCell {
            let academy = dummyAcademyData[indexPath.row]
            cell.academyLabel.text = academy.name
            cell.academyImageView.image = academy.image
            return cell
        } else {
            return UITableViewCell()
        }
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //performSegue(withIdentifier: "moveToDetail", sender: nil)
        performSegue(withIdentifier: "moveToDetail", sender: dummyAcademyData[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToDetail" {
            if let detailViewController = segue.destination as? DetailViewController {
                detailViewController.academy = sender as? AcademyModel
            }
        }
    }
}
