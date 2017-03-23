//
//  DonutVC.swift
//  Donut Gallery
//
//  Created by Lucas Loughner on 3/5/17.
//  Copyright © 2017 Lucas Industries. All rights reserved.
//

import UIKit

class DonutVC: UIViewController {

    @IBOutlet weak var donutImage: UIImageView!
    @IBOutlet weak var donutTitle: UILabel!
    @IBOutlet weak var donutDetails: UILabel!
    @IBOutlet weak var donutNum: UILabel!
    @IBOutlet weak var leftArrow: UIImageView!

    var donuts = [Donut]()
    var pageNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let d1 = Donut(title: "A Donut Wit Chocolate & Sprinkles", imageName: "d1", details: "Dayum that's some nice-ass chocolate sauce baby.")
        let d2 = Donut(title: "Maple Donut Bar", imageName: "d2", details: "Dayum that's a long-ass donut!")
        let d3 = Donut(title: "A Donut Wit Some MnM's", imageName: "d3", details: "MnM's? Good. Donuts? Good. What could go wrong? Nothing. At All.")
        let d4 = Donut(title: "A Plain-ass Donut", imageName: "d4", details: "Wow, that is just crap. How does this even qualify as a donut? I don't even know. This is the ugly duckling of donuts.")
        let d5 = Donut(title: "A Donut Wit Vanilla & Sprinkles", imageName: "d5", details: "I'll sprinkle your vanilla ;).")
        
        donuts.append(d1)
        donuts.append(d2)
        donuts.append(d3)
        donuts.append(d4)
        donuts.append(d5)
        
        updateUI(page: pageNum)
        
    }
    
    
    func updateUI(page: Int) {
        donutImage.image = UIImage(named: "d2")
        donutTitle.text = donuts[page].title
        donutDetails.text = donuts[page].donutDetails
        donutNum.text = "\(pageNum + 1)"
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func leftArrowPressed(_ sender: Any) {
        if pageNum > 0 {
            pageNum -= 1
            updateUI(page: pageNum)
        }
        else {
            print("Someone doesn't know how counting works.")
        }
    }
    
    @IBAction func rightArrowPressed(_ sender: Any) {
        if pageNum < donuts.count - 1 {
            pageNum += 1
            updateUI(page: pageNum)
        }
        else {
            print("Someone doesn't know how counting works.")
        }
    }
    


}



























