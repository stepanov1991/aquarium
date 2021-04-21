//
//  Fish.swift
//  aquarium
//
//  Created by user on 08.04.2021.
//

import UIKit

class Fish {
    
    var xCoordinate : CGFloat
    var yCoordinate : CGFloat
    var width : CGFloat
    var height : CGFloat
    let fishNames = ["Fish1", "Fish2", "Fish3", "Fish4", "Fish5"]
    
    init(xCoordinate: CGFloat, yCoordinate: CGFloat, width : CGFloat, height : CGFloat) {
        self.xCoordinate = xCoordinate
        self.yCoordinate = yCoordinate
        self.width = width
        self.height = height
            }
    func getImage() -> UIImage {
       
        return UIImage(named: fishNames[Int.random(in: 0...fishNames.count)])!
    }
    
    

  
    
}
