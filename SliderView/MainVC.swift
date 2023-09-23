//
//  MainVC.swift
//  SliderView
//
//  Created by Asadbek on 23/09/23.
//

import UIKit
import CardSlider


struct CardDM: CardSliderItem {
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
}

class MainVC: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    
    var data = [CardDM]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
        data.append(CardDM(
            image: UIImage(named: "mercedes") ?? UIImage(),
            rating: 1,
            title: "Mercedes.",
            subtitle: "Mercedes high level car.",
            description: "Enjoy the mercedes."))
        
        data.append(CardDM(
            image: UIImage(named: "anotherLambo") ?? UIImage(),
            rating: nil,
            title: "Lamborghini.",
            subtitle: "Feel the aesthetic view of a lambo.",
            description: "Lambo still is a top level car in luxury car industry."))
        
        data.append(CardDM(
            image: UIImage(named: "lambo") ?? UIImage(),
            rating: nil,
            title: "Another work of art by Lamborghini.",
            subtitle: "Get the book now.",
            description: "Take your friend to a tour in a two seated labmo."))
        
        data.append(CardDM(
            image: UIImage(named: "mustang") ?? UIImage(),
            rating: nil,
            title: "Mustang.",
            subtitle: "Dodge Challenger.",
            description: "A car loved by many fans including me."))
        
        
        
        title = "Luxury cars"
        
        
        
    }
    
    @IBAction func btnTapped() {
        let vc = CardSliderViewController.with(dataSource: self)
        vc.modalPresentationStyle = .fullScreen
        vc.title = "Welcome!!!"
        self.present(vc, animated: true)
    }

    

}

extension MainVC: CardSliderDataSource {
    func item(for index: Int) -> CardSlider.CardSliderItem {
        data[index]
    }
    
    func numberOfItems() -> Int {
        data.count
    }
    
    
}
