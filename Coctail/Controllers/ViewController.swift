//
//  ViewController.swift
//  Coctail
//
//  Created by Дарья Шевченко on 26.07.2021.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet var fieldNameOfCoctail: UITextField!
    @IBOutlet var buttonSearchCoctail: UIButton!
    @IBOutlet weak var luckyButton: UIButton!
    @IBOutlet weak var attentionOfSearch: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backButtonTitle = ""
        fieldNameOfCoctail.returnKeyType = .done
        fieldNameOfCoctail.autocorrectionType = .no
        fieldNameOfCoctail.becomeFirstResponder()
       
    }
    @IBAction func luckyButtonTapped(_ sender: UIButton) {
            exampleForRequest.drinks = nil
            makeRequestRandomCoctail()
            sleep(1)
            let infoListCoctail = ModelOfCoctail()
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(identifier: "fullInformationStoryBoard") as! ControllerOfInformationAboutCoctailViewController
            newViewController.informationAboutConcrectCoctail = infoListCoctail.coctail[0]
            self.present(newViewController, animated: true, completion: nil)
        
    }
    
    @IBAction func buttonSearchTapped() {
        exampleForRequest.drinks = nil
        fieldNameOfCoctail.resignFirstResponder()
        nameOfCoctail = fieldNameOfCoctail.text
        redesignOurCoctail()
        makeRequestCoctail()
        sleep(1)
    }
    

    func makeRequestRandomCoctail() {
        let urlString = "https://www.thecocktaildb.com/api/json/v1/1/random.php"
        let url = URL(string: urlString)
        guard url != nil else {
            return
        }
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data, let coctail = try? JSONDecoder().decode(Drinks.self, from: data) {
                if coctail.drinks == nil {
                    print("not found")
                } else {
                    print()
                    exampleForRequest = coctail
                }
            }
            else {
                print("что-то не то")
            }
        }
        task.resume()
    }
    
    func makeRequestCoctail() {
        let urlString = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=\(nameOfCoctail!)"
        let url = URL(string: urlString)
        guard url != nil else {
            return
        }
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data, let coctail = try? JSONDecoder().decode(Drinks.self, from: data) {
                if coctail.drinks != nil {
                    exampleForRequest = coctail
                }
            }
        }
        task.resume()
        sleep(3)
    }
    
    func redesignOurCoctail()
    {
        nameOfCoctail = nameOfCoctail.replacingOccurrences(of: " ", with: "%20", options: .literal, range: nil)
        print(nameOfCoctail!)
    }
    
}



