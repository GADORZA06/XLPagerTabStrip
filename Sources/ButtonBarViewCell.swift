//  ButtonBarViewCell.swift
//  XLPagerTabStrip ( https://github.com/xmartlabs/XLPagerTabStrip )
//
//  Copyright (c) 2017 Xmartlabs ( http://xmartlabs.com )
//
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

<<<<<<< HEAD
public class ButtonBarViewCell: UICollectionViewCell {
    
    public var labelLayoutAttrib: NSLayoutAttribute!
    
    @IBOutlet public var imageView: UIImageView!
    @IBOutlet public lazy var label: UILabel! = { [unowned self] in
        let label = UILabel(frame: self.contentView.bounds)
        label.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        
        label.textAlignment = .Center
        
        label.font = UIFont.boldSystemFontOfSize(14.0)
        return label
    }()
    
    private lazy var labelView:UIView = {
        let v = UIView()
        
        v.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        v.addSubview(self.label)
        return v
    }()
    
    public override func willMoveToSuperview(newSuperview: UIView?) {
        super.willMoveToSuperview(newSuperview)
        
        if label.superview != nil {
            contentView.addSubview(labelView)
            label.translatesAutoresizingMaskIntoConstraints = false
            let constraint = NSLayoutConstraint(item: label,
                                            attribute: labelLayoutAttrib,
                                            relatedBy: .Equal,
                                            toItem: contentView,
                                            attribute: labelLayoutAttrib,
                                            multiplier: 0.9,
                                            constant: 0)
            contentView.addConstraint(constraint)
        
            let constraintCenter = NSLayoutConstraint(item: label,
                                                attribute: .CenterX,
                                                relatedBy: .Equal,
                                                toItem: contentView,
                                                attribute: .CenterX,
                                                multiplier: 1.0,
                                                constant: 0)
            contentView.addConstraint(constraintCenter)
        }
    }
=======
open class ButtonBarViewCell: UICollectionViewCell {

    @IBOutlet open var imageView: UIImageView!
    @IBOutlet open var label: UILabel!

>>>>>>> upstream/master
}
