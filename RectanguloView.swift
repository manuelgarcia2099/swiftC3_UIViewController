//
//  RectanguloView.swift
//  Challenge3Entrega
//
//  Created by Manuel Alexander Garcia Napa on 08/06/2018.
//  Copyright © 2018 Manuel Alexander Garcia Napa. All rights reserved.
//

import UIKit
@IBDesignable
class RectanguloView: UIView {

    @IBInspectable var rectangleColor: UIColor = .red
    @IBInspectable var patternSize: CGFloat = 10
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
       
        let context = UIGraphicsGetCurrentContext()
      
        context?.move(to: CGPoint(x:patternSize, y:patternSize)) // Esquina derecha superior
        context?.setFillColor(rectangleColor.cgColor)//Colocamos color dentro
        context?.addLine(to: CGPoint(x:patternSize, y:rect.size.height-patternSize)) //Linea que va hasta el 50.50
        context?.addLine(to: CGPoint(x:rect.size.width-patternSize, y:rect.size.height-patternSize)) //Esquina izq superior
        context?.addLine(to: CGPoint(x:rect.size.width-patternSize, y:patternSize)) // Vuelve al pto original
        context?.addLine(to: CGPoint(x:patternSize, y:patternSize)) // Vuelve al pto original
        
        context?.fillPath()
        
        
    }
    

}
