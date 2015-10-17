//
//  ViewController.swift
//  customButtonWithAspectFit
//
//  Created by Masaki Horimoto on 2015/10/17.
//  Copyright © 2015年 Masaki Horimoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    let buttonImageDefault :UIImage? = UIImage(named:"buttonDefault.png")
    let buttonImageSelected :UIImage? = UIImage(named:"buttonSelected.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        button.setImage(buttonImageDefault!, forState: .Normal)
        button.setImage(buttonImageSelected!, forState: .Highlighted)
        button.imageView?.contentMode = UIViewContentMode.ScaleAspectFit    //Aspect比一定でViewからはみ出さない大きさまで目一杯広げる
        //button.imageView?.contentMode = UIViewContentMode.ScaleAspectFill //Aspect比一定でViewから縦横の一方がはみ出る形で目一杯広げる
        //button.imageView?.contentMode = UIViewContentMode.ScaleToFill     //Aspect比を保たずにViewの大きさまで目一杯広げる

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressButton(sender: AnyObject) {
    }

}

