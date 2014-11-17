//
//  View.swift
//  Nov 11_2
//
//  Created by Elena Da Re on 11/16/14.
//  Copyright (c) 2014 Elena Da Re. All rights reserved.
//

import UIKit

class View: UIView {
	
	let square: Square
	//let label: Label
	
	required init(coder aDecoder: NSCoder) {
		let f: CGRect = CGRectMake(0, 120, 100, 100);
		square = Square(frame: f);
		//let q: CGRect = CGRectMake(0, 220, 80, 30);
		//label = Label(frame: q);
		super.init(coder: aDecoder)
		backgroundColor = UIColor.whiteColor();
		addSubview(square);
		//addSubview(label);
	}
	
	override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
		let touch: UITouch = touches.anyObject() as UITouch;
		let point: CGPoint = touch.locationInView(self);
		let colorspace: CGColorSpaceRef = CGColorSpaceCreateDeviceRGB();
		let components: [CGFloat] = [0.0, 0.0, 1.0, 1.0];
		
		let options = UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.Repeat | UIViewAnimationOptions.CurveEaseInOut //repeat the animation
		let x = bounds.size.width - 50
		
		UIView.animateWithDuration(1.5,
			delay: 0.0,
			options:  options,
			animations: {
				
				self.square.layer.backgroundColor = CGColorCreate(colorspace, components);
				self.square.frame = CGRect(x: x, y: 120, width: 50, height: 50)
				
			},
			completion: nil
		);
	}
	
	override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
	}
	
	override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
	}
	
	override func touchesCancelled(touches: NSSet, withEvent event: UIEvent) {
	}
	
	
	
	
	
	// Only override drawRect: if you perform custom drawing.
	// An empty implementation adversely affects performance during animation.
	override func drawRect(rect: CGRect) {
		
		//add background
		var image: UIImage? = UIImage(named: "pic.png");
		if image == nil {
			println("could not find pic.png");
			return;
		}
		
		//upper left corner of image
		let point: CGPoint = CGPointMake(0, 160);
		
		image!.drawAtPoint(point);
	}
	
	
}