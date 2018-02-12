//
//  CustomCollectionViewLayout.swift
//  DanBerenholtz
//
//  Created by Josh Edson on 2/11/18.
//  Copyright © 2018 Josh Edson. All rights reserved.
//

import UIKit

class CustomCollectionViewLayout: UICollectionViewLayout {
    var delegate:CustomCollectionViewLayoutDelegate!
    fileprivate var numberOfColumns = 3
    fileprivate var cellPadding:CGFloat = 5
    public var cache = [UICollectionViewLayoutAttributes]()
    fileprivate var contentHeight:CGFloat = 0
    
    fileprivate var contentWidth:CGFloat {
        guard let collectionView = collectionView else {
            return 0
        }
        let insets = collectionView.contentInset
        return collectionView.bounds.width - (insets.left + insets.right)
    }
    
    override var collectionViewContentSize: CGSize {
        return CGSize(width:contentWidth, height:contentHeight)
    }
    
    override func prepare() {
        guard cache.isEmpty == true, let collectionView = collectionView else {
            return
        }
        let columnWidth = contentWidth / CGFloat(numberOfColumns)
        var column = 0
        var yOffset = [CGFloat](repeating: 0, count:numberOfColumns)
        yOffset[1] = columnWidth * 2;
        var prev_span = 1
        for item in 0 ..< collectionView.numberOfItems(inSection: 0) {
            let xOffset = (CGFloat(column) * columnWidth)
            let indexPath = IndexPath(item: item, section:0)
            let span = delegate.collectionView(collectionView, columnSpanForPhotoAtIndexPath: indexPath as NSIndexPath)
            let photoWidth = columnWidth * CGFloat(span);
            let photoHeight = photoWidth
            let frame = CGRect(x: xOffset, y: yOffset[column], width:photoWidth, height:photoHeight)
            let insetFrame = frame.insetBy(dx: cellPadding, dy: cellPadding)
            let attributes = UICollectionViewLayoutAttributes(forCellWith: indexPath)
            attributes.frame = insetFrame
            cache.append(attributes)
            contentHeight = max(contentHeight, frame.maxY)

            yOffset[column] = yOffset[column] + photoHeight
            if(prev_span == 1) {
                column = column < (numberOfColumns - 1) ? (column + span):0
            }
            else {
                column = 2
            }
            prev_span = span
        
        }
        
    }
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        return cache[indexPath.item]
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        var visibleLayoutAttributes = [UICollectionViewLayoutAttributes]()
        for attributes in cache {
            if attributes.frame.intersects(rect) {
                visibleLayoutAttributes.append(attributes)
            }
            
        }
        return visibleLayoutAttributes
    }
}

@objc protocol CustomCollectionViewLayoutDelegate:class {
//    func collectionView(_ collectionView:UICollectionView, heightForPhotoAtIndexPath:NSIndexPath) -> CGFloat
    func collectionView(_ collectionView:UICollectionView, columnSpanForPhotoAtIndexPath:NSIndexPath) -> Int
    var collectionView:UICollectionView {get}
}
