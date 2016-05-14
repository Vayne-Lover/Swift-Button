//
//  ViewController.swift
//  Swift Button
//
//  Created by 姜况童 on 16/5/14.
//  Copyright © 2016年 姜况童. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    func showGreen(){
        print("Touched green button.")    //You need to set it out of the viewDidLoad()
    }
    func showRed(button:UIButton){
        print("Touched red button.")        //You need to set it out of the viewDidLoad()
    }
    func showBlue(button:UIButton)  {
        print("Touched blue button.")       //You need to set it out of the viewDidLoad()
    }
    
    class AddButton: NSObject {           //Create class AddButton inherit from NSObject
        //Add function to create button
        func CreateButton(view:UIView) {
            let bt1=UIButton(frame:CGRectMake(50,50,40,60))
            bt1.setTitle("Re", forState: .Normal)
            bt1.backgroundColor=UIColor.redColor()
            bt1.addTarget(self, action:#selector(showRed(_:)),forControlEvents: UIControlEvents.TouchUpInside)
            view.addSubview(bt1)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //Use class to add button
        let addButton=AddButton()
        addButton.CreateButton(self.view)
        //Add button with UIButton and action doesn't have parameter
        let button=UIButton(frame:CGRect(x: 150,y: 50,width: 40,height: 60))
        button.setTitle("Gr", forState:UIControlState.Normal)
        button.backgroundColor=UIColor.greenColor()
        button.addTarget(self,action:#selector(showGreen),forControlEvents:.TouchUpInside)
        self.view.addSubview(button)
        //Add button with UIButton and action has parameter
        let bt2=UIButton(frame:CGRect(x: 100,y: 50,width: 40,height: 60))
        bt2.setTitle("Bl", forState: .Normal)
        bt2.backgroundColor=UIColor.blueColor()
        bt2.addTarget(self, action:#selector(showBlue(_:)),forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(bt2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

