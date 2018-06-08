//
//  ViewController.swift
//  Challenge3Entrega
//
//  Created by Manuel Alexander Garcia Napa on 08/06/2018.
//  Copyright © 2018 Manuel Alexander Garcia Napa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rectangle: RectanguloView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func change(_ sender: UIButton) {
        
        let rectangle = sender.superview as! RectanguloView
        let colorAtributo = rectangle.rectangleColor
        let colorBackground = rectangle.backgroundColor!
        
        rectangle.backgroundColor = colorAtributo
        rectangle.rectangleColor =  colorBackground
        
        
    }


}

