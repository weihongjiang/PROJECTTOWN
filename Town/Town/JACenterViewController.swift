//
//  JACenterViewController.swift
//  Town
//
//  Created by john.wei on 15/6/8.
//  Copyright (c) 2015年 whj. All rights reserved.
//

import UIKit

class JACenterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var tableView:UITableView?
    var dataArray:  [(String,String)]! = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "主页"
        self.view!.backgroundColor = UIColor.whiteColor()
        self.tableView = UITableView(frame: self.view.frame, style: UITableViewStyle.Plain)
        self.tableView?.dataSource = self
        self.tableView?.delegate = self
        self.tableView!.registerClass(JACenterTableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
        self.view.addSubview(self.tableView!)
        
        self.dataArray.append("深圳","shenzhen.jpg")
        self.dataArray.append("北京","beijing.jpg")
        self.dataArray.append("上海","shanghai.jpg")
        self.dataArray.append("广州","guangzhou.jpg")
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 92.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cellIdentifier") as! JACenterTableViewCell

        let aItem = self.dataArray[indexPath.row]
        cell.nameLabel?.text = aItem.0
        cell.titleImageView?.image = UIImage(named: aItem.1)
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        var alert = UIAlertView(title:"" , message: self.dataArray[indexPath.row].0, delegate: nil, cancelButtonTitle: "OK")
        alert.show()
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
