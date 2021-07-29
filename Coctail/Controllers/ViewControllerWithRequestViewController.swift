//
//  ViewControllerWithRequestViewController.swift
//  Coctail
//
//  Created by Дарья Шевченко on 27.07.2021.
//

import UIKit

class ViewControllerWithRequestViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    var infoListCoctail = ModelOfCoctail()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "coctails")
        tableView.register(UINib(nibName: "ViewCellForNotFound", bundle: nil), forCellReuseIdentifier: "coctail")
    }
    
    func imageViewOnScreen(urlOfImage: String) -> UIImage?{
        let url = URL(string: urlOfImage)!
        if let data = try? Data(contentsOf: url) {
            return UIImage(data: data)!
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //print(nameOfCoctail)
        if exampleForRequest.drinks != nil {
            return exampleForRequest.drinks!.count
        }
        else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if exampleForRequest.drinks != nil {
            let cell = tableView.dequeueReusableCell(withIdentifier: "coctails") as! TableViewCell
            let information = infoListCoctail.coctail[indexPath.row]
            cell.titleLabel.text = information.nameOfCoctail
            cell.subtitleLabel.text = information.categoryOfCoctail
            cell.imageCoctail.image = imageViewOnScreen(urlOfImage: information.strDrinkThumb)
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "coctail") as! ViewCellForNotFound
            cell.labelNothingFound.text = "Nothing not found!"
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if exampleForRequest.drinks != nil {
            return 200
        }
        else {
            return 50
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        if exampleForRequest.drinks != nil {
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(identifier: "fullInformationStoryBoard") as! ControllerOfInformationAboutCoctailViewController
            newViewController.informationAboutConcrectCoctail = infoListCoctail.coctail[indexPath.row]
            self.present(newViewController, animated: true, completion: nil)
        }
    }
}
