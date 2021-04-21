//
//  ViewController.swift
//  aquarium
//
//  Created by user on 08.04.2021.
//

import UIKit

class AquariumViewController: UIViewController {

    @IBOutlet weak var fishImage: UIImageView!
    
    var nemoImage =  UIImageView()
   
    var nemo = Fish(xCoordinate: 50.0, yCoordinate: 50.0, width: 30.0, height: 10.0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nemoImage.frame = CGRect(x: nemo.xCoordinate, y: nemo.yCoordinate, width: nemo.width, height: nemo.height)
       
        fishImage.image = nemo.getImage()
        
        nemoImage.backgroundColor = .blue
     
        self.view.addSubview(nemoImage)
        
        
       

       
       var moveTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.move), userInfo: nil, repeats: true)
        
//       var moveImageTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.moveFish(sender:)), userInfo: nemoImage.frame.minX, repeats: true)
    }
    @objc func move () {
        
        var i = Float.random(in: -1.0...1.0)
    
        fishImage.frame = CGRect(x: fishImage.frame.origin.x + CGFloat(i), y: fishImage.frame.minY, width: fishImage.frame.width, height: fishImage.frame.height)
        
  //      nemoImage.frame = CGRect(x: nemoImage.frame.origin.x + CGFloat(i), y: nemoImage.frame.minY + CGFloat(i), width: nemoImage.frame.width, height: nemoImage.frame.height)
       
 
    }
//
//    @objc func moveFish(sender: Timer) {
////        fish.frame = CGRect(x: fish.frame.minX + 0.5, y: fish.frame.minY + 0.5, width: fish.frame.width, height: fish.frame.height)
//        sender.userInfo = sender.userInfo + 1
//    }

}

