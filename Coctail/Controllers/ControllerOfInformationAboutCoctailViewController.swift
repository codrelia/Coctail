//
//  ControllerOfInformationAboutCoctailViewController.swift
//  Coctail
//
//  Created by Дарья Шевченко on 28.07.2021.
//

import UIKit

class ControllerOfInformationAboutCoctailViewController: UIViewController {

    
    @IBOutlet weak var imageOfOurCoctail: UIImageView!
    @IBOutlet weak var nameThisCoctail: UILabel!
    @IBOutlet weak var categoryOurCoctail: UILabel!
    @IBOutlet weak var typeOurCoctail: UILabel!
    @IBOutlet weak var glassOurCoctail: UILabel!
    @IBOutlet weak var instructionsOurCoctail: UILabel!
    @IBOutlet weak var ingredientsOurCoctail: UILabel!
    
    var informationAboutConcrectCoctail: Info = Info(nameOfCoctail: "", categoryOfCoctail: "", typeOfCoctail: "", glassOfCoctail: "", instructions: "", ingredientsAndMeasure: "", strDrinkThumb: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editOurElements()
        instructionsOurCoctail.sizeToFit()
        ingredientsOurCoctail.sizeToFit()
    }
    
    func imageViewOnScreen(urlOfImage: String) -> UIImage?{
        let url = URL(string: urlOfImage)!
        if let data = try? Data(contentsOf: url) {
            return UIImage(data: data)!
        }
        return nil
    }
    
    func editOurElements() {
        imageOfOurCoctail.image = imageViewOnScreen(urlOfImage: informationAboutConcrectCoctail.strDrinkThumb)
        nameThisCoctail.text = informationAboutConcrectCoctail.nameOfCoctail
        categoryOurCoctail.text = informationAboutConcrectCoctail.categoryOfCoctail
        typeOurCoctail.text = informationAboutConcrectCoctail.typeOfCoctail
        glassOurCoctail.text = informationAboutConcrectCoctail.glassOfCoctail
        instructionsOurCoctail.text = informationAboutConcrectCoctail.instructions
        ingredientsOurCoctail.text = informationAboutConcrectCoctail.ingredientsAndMeasure
    }
}

