//
//  RestaurantTableViewController.swift
//  FoodPinDemo
//
//  Created by 罗秋生 on 16/8/17.
//  Copyright © 2016年 罗秋生. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {

    /**
     *  DATA RESOURCES
     */
//    var restaurant         = ["咖啡胡同", "霍米", "茶.家", "洛伊斯咖啡", "贝蒂生蚝", "福奇餐馆", "阿波画室", "伯克街面包坊", "黑氏巧克力", "惠灵顿雪梨", "北州", "布鲁克林塔菲", "格雷厄姆大街肉", "华夫饼 & 沃夫", "五叶", "眼光咖啡", "忏悔", "巴拉菲娜", "多尼西亚", "皇家橡树", "泰咖啡"]
//    var restaurantPictures =
//        ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "thaicafe.jpg"]
//    var restaurantAddress  = ["香港", "香港", "香港", "香港", "香港", "香港", "香港", "悉尼", "悉尼", "悉尼", "纽约", "纽约", "纽约", "纽约", "纽约", "纽约", "纽约", "伦敦", "伦敦", "伦敦", "伦敦"]
//    var restaurantType     = ["咖啡 & 茶店","咖啡", "茶屋", "奥地利式 & 休闲饮料","法式", "面包房", "面包房", "巧克力", "咖啡", "美式 & 海鲜", "美式", "美式","早餐 & 早午餐", "法式 & 茶", "咖啡 & 茶", "拉丁美式", "西班牙式", "西班牙式", "西班牙式", "英式", "泰式"]
//    var TRUEORFALSE        = [Bool](count: 21, repeatedValue: false)
    
    var restaurants = [
        Restaurant(name: "咖啡胡同", type: "咖啡 & 茶店", location: "香港上环德辅道西78号G/F", image: "cafedeadend.jpg", isVisited: false) ,
        Restaurant(name: "霍米", type: "咖啡", location: "香港上环文咸东街太平山22-24A，B店", image: "homei.jpg", isVisited: false) ,
        Restaurant(name: "茶.家", type: "茶屋", location: "香港葵涌和宜合道熟食市场地下", image: "teakha.jpg", isVisited: false) ,
        Restaurant(name: "洛伊斯咖啡", type: "奥地利式 & 休闲饮料", location: "香港新界葵涌屏富径", image: "cafeloisl.jpg", isVisited: false) ,
        Restaurant(name: "贝蒂生蚝", type: "法式", location: "香港九龙尖沙咀河内道18号(近港铁尖东站N3,N4出口) ", image: "petiteoyster.jpg", isVisited: false) ,
        Restaurant(name: "福奇餐馆", type: "面包房", location: "香港岛中环都爹利街13号乐成行地库中层", image: "forkeerestaurant.jpg", isVisited: false) ,
        Restaurant(name: "阿波画室", type: "面包房", location: "香港岛铜锣湾轩尼诗道555号崇光百货地库2楼30号铺", image: "posatelier.jpg", isVisited: false) ,
        Restaurant(name: "伯克街面包坊", type: "巧克力", location: "4 Hickson Rd、The Rocks NSW 2000", image: "bourkestreetbakery.jpg", isVisited: false) ,
        Restaurant(name: "黑氏巧克力", type: "咖啡", location: "31 Wheat Rd、Sydney NSW 2001", image: "haighschocolate.jpg", isVisited: false) ,
        Restaurant(name: "惠灵顿雪梨", type: "美式 & 海鲜", location: "1/11-31 York Street Sydney NSW Australia、Sydney NSW 2000", image: "palominoespresso.jpg", isVisited: false) ,
        Restaurant(name: "北州", type: "美式", location: "Macy's、151 W 34th St Fifth Floor、New York, NY 10001", image: "upstate.jpg", isVisited: false) ,
        Restaurant(name: "布鲁克林塔菲", type: "美式", location: "250 8th Ave、New York, NY 10107", image: "traif.jpg", isVisited: false) ,
        Restaurant(name: "格雷厄姆大街肉", type: "早餐 & 早午餐", location: "55-1 Riverwalk Pl、West New York, NJ 07093", image: "grahamavenuemeats.jpg", isVisited: false) ,
        Restaurant(name: "华夫饼 & 沃夫", type: "法式 & 茶", location: "1585 Broadway、New York, NY 10036-8200", image: "wafflewolf.jpg", isVisited: false) ,
        Restaurant(name: "五叶", type: "咖啡 & 茶", location: "1460 Broadway、New York, NY 10036", image: "fiveleaves.jpg", isVisited: false) ,
        Restaurant(name: "眼光咖啡", type: "拉丁美式", location: "250 8th Ave、New York, NY 10107", image: "cafelore.jpg", isVisited: false) ,
        Restaurant(name: "忏悔", type: "西班牙式", location: "822 Lexington Ave、New York, NY 10065", image: "confessional.jpg", isVisited: false) ,
        Restaurant(name: "巴拉菲娜", type: "西班牙式", location: "Unit 2, Eldon Chambers、30-32 Fleet St、London EC4Y 1AA", image: "barrafina.jpg", isVisited: false) ,
        Restaurant(name: "多尼西亚", type: "西班牙式", location: "Waterloo Station、London SE1 7LY", image: "donostia.jpg", isVisited: false) ,
        Restaurant(name: "皇家橡树", type: "英式", location: "Unit 4a、44-58 Brompton Rd、London SW3 1BW", image: "royaloak.jpg", isVisited: false) ,
        Restaurant(name: "泰咖啡", type: "泰式", location: "7-9 Golders Green Rd、London NW11 8DY", image: "thaicafe.jpg", isVisited: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        
        tableView.estimatedRowHeight = 45
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurants.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomTableViewCell

        cell.restaurantName.text                = restaurants[indexPath.row].name
        cell.restaurantType.text                = restaurants[indexPath.row].type
        cell.restaurantImage.image              = UIImage(named: restaurants[indexPath.row].image)
        cell.restaurantAddress.text             = restaurants[indexPath.row].location
        cell.restaurantHeartImage.image         = restaurants[indexPath.row].isVisited ? UIImage(named: "heart") : nil
        
        cell.restaurantImage.layer.cornerRadius = cell.restaurantImage.frame.size.width/2
        cell.restaurantImage.clipsToBounds      = true
        
        return cell
    }

    /*
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let alertController = UIAlertController(title: "Notification", message: "You choose me!", preferredStyle: UIAlertControllerStyle.ActionSheet)
        let cancelAction    = UIAlertAction(title: "SURE", style: UIAlertActionStyle.Cancel, handler: nil)
        let CallPhone       = {(action: UIAlertAction!) -> Void in
            
            let alertController = UIAlertController(title: "Notification", message: "Can't connect the phone number you call!", preferredStyle: UIAlertControllerStyle.Alert)
            let alertAction     = UIAlertAction(title: "SURE", style: UIAlertActionStyle.Cancel, handler: nil)
            
            alertController.addAction(alertAction)
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        
        let dialAction  = UIAlertAction(title: "+86-1326682063\(indexPath.row)", style: UIAlertActionStyle.Default, handler: CallPhone)
        let checkAction = UIAlertAction(title: "CHECK MARK", style: UIAlertActionStyle.Default) { (UIAlertAction) in
            
            self.TRUEORFALSE[indexPath.row] = true
            tableView.reloadData()
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(dialAction)
        alertController.addAction(checkAction)
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    */
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source

//            self.restaurant.removeAtIndex(indexPath.row)
//            self.restaurantPictures.removeAtIndex(indexPath.row)
//            self.restaurantAddress.removeAtIndex(indexPath.row)
//            self.restaurantType.removeAtIndex(indexPath.row)
//            self.TRUEORFALSE.removeAtIndex(indexPath.row)

            restaurants.removeAtIndex(indexPath.row)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        
        let shareAction = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "SHARE") { (action, indexPath) in
            
            let alertController   = UIAlertController(title: "Share Type", message: "Chose The Type You Want To Share", preferredStyle: .ActionSheet)
            let QQShareAction     = UIAlertAction(title: "QQ", style: .Default, handler: nil)
            let WeiBoShareAction  = UIAlertAction(title: "WeiBo", style: .Default, handler: nil)
            let WeChatShareAction = UIAlertAction(title: "WeChat", style: .Default, handler: nil)
            
            alertController.addAction(QQShareAction)
            alertController.addAction(WeiBoShareAction)
            alertController.addAction(WeChatShareAction)
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        
        let deleteAction = UITableViewRowAction(style: .Default, title: "DELETE") { (action, indexPath) in
            
//            self.restaurant.removeAtIndex(indexPath.row)
//            self.restaurantPictures.removeAtIndex(indexPath.row)
//            self.restaurantAddress.removeAtIndex(indexPath.row)
//            self.restaurantType.removeAtIndex(indexPath.row)
//            self.TRUEORFALSE.removeAtIndex(indexPath.row)
            self.restaurants.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
        
        // 设置Action按钮颜色
        shareAction.backgroundColor  = UIColor.greenColor()
        deleteAction.backgroundColor = UIColor.redColor()
        
        return [shareAction, deleteAction]
    }
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showDetailViewController" {
            let restaurantViewController               = segue.destinationViewController as! DetailTableViewController
//            restaurantViewController.restaurantPicture = self.restaurantPicture[(tableView.indexPathForSelectedRow?.row)!]
//            restaurantViewController.restaurantName = self.restaurant[(tableView.indexPathForSelectedRow?.row)!]
//            restaurantViewController.restaurantAddress = self.restaurantAddress[(tableView.indexPathForSelectedRow?.row)!]
//            restaurantViewController.restaurantType = self.restaurantType[(tableView.indexPathForSelectedRow?.row)!]
            restaurantViewController.restaurant = restaurants[(tableView.indexPathForSelectedRow?.row)!]
        }
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
