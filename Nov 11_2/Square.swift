//
//  Square.swift
//  Nov 11_2
//
//  Created by Elena Da Re on 11/16/14.
//  Copyright (c) 2014 Elena Da Re. All rights reserved.
//

import UIKit
import QuartzCore;

class Square: UIView {
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		// Initialization code
		//self.backgroundColor = UIColor.blueColor();
		
		//backgroundColor = UIColor.yellowColor();
		backgroundColor = UIColor.clearColor();
		
		let colorspace: CGColorSpaceRef = CGColorSpaceCreateDeviceRGB();
		let components: [CGFloat] = [1.0, 1.0, 0.0, 1.0];	//rgba
		let layer: CALayer = self.layer;
		layer.backgroundColor = CGColorCreate(colorspace, components);
		
	}
	
	//Never called, but required anyway.
	
	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	
	// Only override drawRect: if you perform custom drawing.
	// An empty implementation adversely affects performance during animation.
	// override func drawRect(rect: CGRect) {
	//	var coloredSquare: CGRect = CGRectMake(0, 0, 50, 50)
	
	/*var c: CGContextRef = UIGraphicsGetCurrentContext();
	CGContextBeginPath(c);	//unnecessary here: the path is already empty.
	CGContextAddRect(c, coloredSquare);
	CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 1.0);	//red, opaque
	CGContextFillPath(c);
	*/
}
