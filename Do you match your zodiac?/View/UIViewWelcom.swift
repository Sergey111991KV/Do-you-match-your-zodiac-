//
//  UIViewWelcom.swift
//  Do you match your zodiac?
//
//  Created by Сергей Косилов on 29/06/2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

import UIKit

class UIViewWelcom: UIView {
    
    override func draw(_ rect: CGRect) {
        let roundedRect = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadios)
        roundedRect.addClip()
        UIColor.red.setFill()
        roundedRect.fill()
        
        
    }
    
    private lazy var upperLeftCornerImage = createCornerImage()
    private lazy var lowerRightCornerImage = createCornerImage()
    
    private func createCornerImage() -> UIImage{
        let image = UIImage()
        
//        addSubview(image)
        return image
    }
    
    private func configureCornrerImage(_ label: UIImage){
       
        
    }
//
//  override func layoutSubviews() {
//        super.layoutSubviews()
//        configureCornrerImage(upperLeftCornerImage)
//        upperLeftCornerImage.frame.origin = bounds.origin.offSetBy(dx: cornerOffSet, dy: cornerOffSet)
//        configureCornrerImage(lowerRightCornerImage)
//        lowerRightCornerImage.transform = CGAffineTransform.identity.translatedBy(x: lowerRightCornerLabel.frame.size.width, y: lowerRightCornerLabel.frame.size.height).rotated(by: CGFloat.pi)
//        lowerRightCornerImage.frame.origin = CGPoint(x: bounds.maxX, y: bounds.maxY).offSetBy(dx: -cornerOffSet, dy: -cornerOffSet).offSetBy(dx: -lowerRightCornerLabel.frame.size.width, dy: -lowerRightCornerImage.frame.size.height)
//    }
//
    
    
}



extension UIViewWelcom{
    
    private struct SizeRatio {
        static let cornerFontSizeToBoundsHeits: CGFloat = 0.08
        static let cornerRadiusToBoundsHeits: CGFloat = 0.06
        static let cornerOffSetToCornerRadius: CGFloat = 0.33
        static let faceCardImageSizeToBoundsSize: CGFloat = 0.75
    }
    
    private var cornerRadios: CGFloat {
        return bounds.size.height * SizeRatio.cornerRadiusToBoundsHeits
    }
    private var cornerOffSet: CGFloat{
        return cornerRadios * SizeRatio.cornerOffSetToCornerRadius
    }
    private var cornerFontSize: CGFloat{
        return bounds.size.height * SizeRatio.cornerFontSizeToBoundsHeits
    }
    
    
}
extension CGRect{
    
    var leftHalf: CGRect{
        return CGRect(x: minX, y: minY, width: width/2, height: height)
    }
    var rightHalf: CGRect{
        return CGRect(x: midX, y: minY, width: width/2, height: height)
    }
    func inset(by size: CGSize) -> CGRect {
        return insetBy(dx: size.width, dy: size.height)
    }
    func sized(to size: CGSize) -> CGRect{
        return CGRect(origin: origin, size: size)
    }
    func zoom(by scale: CGFloat) -> CGRect {
        let newWidth = width * scale
        let newHeight = height * scale
        return insetBy(dx: (width - newWidth) / 2, dy: (height - newHeight) / 2)
    }
}

extension CGPoint {
    func offSetBy(dx: CGFloat, dy: CGFloat) -> CGPoint {
        return CGPoint(x: x + dx, y: y + dy)
    }
}

