//
//  StructForUI.swift
//  Coctail
//
//  Created by Дарья Шевченко on 28.07.2021.
//

import Foundation

struct Info {
    var nameOfCoctail: String
    var categoryOfCoctail: String
    var typeOfCoctail: String
    var glassOfCoctail: String
    var instructions: String
    var ingredientsAndMeasure: String
    var strDrinkThumb: String
}

class ModelOfCoctail {
    var coctail = [Info]()
    
    init() {
        get()
    }
    
    func get() {
        var tempName: [String] = []
        var tempCategory: [String] = []
        var tempType: [String] = []
        var tempGlass: [String] = []
        var tempInstructions: [String] = []
        var tempArrOfIngredientAndMeasure: [String] = []
        var tempDrinkThumb: [String] = []
        sleep(3)
        if exampleForRequest.drinks != nil {
            for i in 0...exampleForRequest.drinks!.count - 1 {
                tempName.append(exampleForRequest.drinks![i].strDrink)
                tempCategory.append(exampleForRequest.drinks![i].strCategory!)
                tempType.append(exampleForRequest.drinks![i].strAlcoholic!)
                tempGlass.append(exampleForRequest.drinks![i].strGlass!)
                tempInstructions.append(exampleForRequest.drinks![i].strInstructions!)
                var strIngredientAndMeasure: String = ""
                if exampleForRequest.drinks![i].strIngredient1 != nil {
                    strIngredientAndMeasure += exampleForRequest.drinks![i].strIngredient1! + " "
                    if exampleForRequest.drinks![i].strMeasure1 != nil {
                        strIngredientAndMeasure += "(" + exampleForRequest.drinks![i].strMeasure1! + "), "
                    }
                }
                if exampleForRequest.drinks![i].strIngredient2 != nil {
                    strIngredientAndMeasure += exampleForRequest.drinks![i].strIngredient2! + " "
                    if exampleForRequest.drinks![i].strMeasure2 != nil {
                        strIngredientAndMeasure += "(" + exampleForRequest.drinks![i].strMeasure2! + "), "
                    }
                }
                if exampleForRequest.drinks![i].strIngredient3 != nil {
                    strIngredientAndMeasure += exampleForRequest.drinks![i].strIngredient3! + " "
                    if exampleForRequest.drinks![i].strMeasure3 != nil {
                        strIngredientAndMeasure += "(" + exampleForRequest.drinks![i].strMeasure3! + "), "
                    }
                }
                if exampleForRequest.drinks![i].strIngredient4 != nil {
                    strIngredientAndMeasure += exampleForRequest.drinks![i].strIngredient4! + " "
                    if exampleForRequest.drinks![i].strMeasure4 != nil {
                        strIngredientAndMeasure += "(" + exampleForRequest.drinks![i].strMeasure4! + "), "
                    }
                }
                if exampleForRequest.drinks![i].strIngredient5 != nil {
                    strIngredientAndMeasure += exampleForRequest.drinks![i].strIngredient5! + " "
                    if exampleForRequest.drinks![i].strMeasure5 != nil {
                        strIngredientAndMeasure += "(" + exampleForRequest.drinks![i].strMeasure5! + "), "
                    }
                }
                if exampleForRequest.drinks![i].strIngredient6 != nil {
                    strIngredientAndMeasure += exampleForRequest.drinks![i].strIngredient6! + " "
                    if exampleForRequest.drinks![i].strMeasure6 != nil {
                        strIngredientAndMeasure += "(" + exampleForRequest.drinks![i].strMeasure6! + "), "
                    }
                }
                if exampleForRequest.drinks![i].strIngredient7 != nil {
                    strIngredientAndMeasure += exampleForRequest.drinks![i].strIngredient7! + " "
                    if exampleForRequest.drinks![i].strMeasure7 != nil {
                        strIngredientAndMeasure += "(" + exampleForRequest.drinks![i].strMeasure7! + "), "
                    }
                }
                if exampleForRequest.drinks![i].strIngredient8 != nil {
                    strIngredientAndMeasure += exampleForRequest.drinks![i].strIngredient8! + " "
                    if exampleForRequest.drinks![i].strMeasure8 != nil {
                        strIngredientAndMeasure += "(" + exampleForRequest.drinks![i].strMeasure8! + "), "
                    }
                }
                if exampleForRequest.drinks![i].strIngredient9 != nil {
                    strIngredientAndMeasure += exampleForRequest.drinks![i].strIngredient9! + " "
                    if exampleForRequest.drinks![i].strMeasure9 != nil {
                        strIngredientAndMeasure += "(" + exampleForRequest.drinks![i].strMeasure9! + "), "
                    }
                }
                if exampleForRequest.drinks![i].strIngredient10 != nil {
                    strIngredientAndMeasure += exampleForRequest.drinks![i].strIngredient10! + " "
                    if exampleForRequest.drinks![i].strMeasure10 != nil {
                        strIngredientAndMeasure += "(" + exampleForRequest.drinks![i].strMeasure10! + "), "
                    }
                }
                if exampleForRequest.drinks![i].strIngredient11 != nil {
                    strIngredientAndMeasure += exampleForRequest.drinks![i].strIngredient11! + " "
                    if exampleForRequest.drinks![i].strMeasure11 != nil {
                        strIngredientAndMeasure += "(" + exampleForRequest.drinks![i].strMeasure11! + "), "
                    }
                }
                if exampleForRequest.drinks![i].strIngredient12 != nil {
                    strIngredientAndMeasure += exampleForRequest.drinks![i].strIngredient12! + " "
                    if exampleForRequest.drinks![i].strMeasure12 != nil {
                        strIngredientAndMeasure += "(" + exampleForRequest.drinks![i].strMeasure12! + "), "
                    }
                }
                if exampleForRequest.drinks![i].strIngredient13 != nil {
                    strIngredientAndMeasure += exampleForRequest.drinks![i].strIngredient13! + " "
                    if exampleForRequest.drinks![i].strMeasure13 != nil {
                        strIngredientAndMeasure += "(" + exampleForRequest.drinks![i].strMeasure13! + "), "
                    }
                }
                if exampleForRequest.drinks![i].strIngredient14 != nil {
                    strIngredientAndMeasure += exampleForRequest.drinks![i].strIngredient14! + " "
                    if exampleForRequest.drinks![i].strMeasure14 != nil {
                        strIngredientAndMeasure += "(" + exampleForRequest.drinks![i].strMeasure14! + "), "
                    }
                }
                if exampleForRequest.drinks![i].strIngredient15 != nil {
                    strIngredientAndMeasure += exampleForRequest.drinks![i].strIngredient15! + " "
                    if exampleForRequest.drinks![i].strMeasure15 != nil {
                        strIngredientAndMeasure += "(" + exampleForRequest.drinks![i].strMeasure15! + "), "
                    }
                }
                if strIngredientAndMeasure.last! == " " {
                    strIngredientAndMeasure.remove(at: strIngredientAndMeasure.index(before: strIngredientAndMeasure.endIndex))
                }
                if strIngredientAndMeasure.last! == "," {
                    strIngredientAndMeasure.remove(at: strIngredientAndMeasure.index(before: strIngredientAndMeasure.endIndex))
                }
                tempArrOfIngredientAndMeasure.append(strIngredientAndMeasure)
                tempDrinkThumb.append(exampleForRequest.drinks![i].strDrinkThumb!)
                
            }
            for i in 0...exampleForRequest.drinks!.count - 1{
                var drinksElement = Info(nameOfCoctail: tempName[i], categoryOfCoctail: tempCategory[i], typeOfCoctail: tempType[i], glassOfCoctail: tempGlass[i], instructions: tempInstructions[i], ingredientsAndMeasure: tempArrOfIngredientAndMeasure[i], strDrinkThumb: tempDrinkThumb[i])
                coctail.append(drinksElement)
            }
        }
    }
}
