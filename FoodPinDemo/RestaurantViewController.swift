//
//  RestaurantViewController.swift
//  FoodPinDemo
//
//  Created by 罗秋生 on 16/8/20.
//  Copyright © 2016年 罗秋生. All rights reserved.
//

import UIKit

class RestaurantViewController: UIViewController {

    var restaurant : Restaurant!
    
    var restaurantPicture = NSString()
    var restaurantName = NSString()
    var restaurantAddress = NSString()
    var restaurantType = NSString()
    
    @IBOutlet weak var restaurantImageView: UIImageView!
    @IBOutlet weak var nameLabel          : UILabel!
    @IBOutlet weak var addressLabel       : UILabel!
    @IBOutlet weak var typeLabel          : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        restaurantImageView.image = UIImage(named: restaurant.image)
        nameLabel.text            = restaurant.name
        addressLabel.text         = restaurant.location
        typeLabel.text            = restaurant.type
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
