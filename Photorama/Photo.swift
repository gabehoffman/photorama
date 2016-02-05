//
//  Photo.swift
//  Photorama
//
//  Created by Gabe Remote Office on 1/21/16.
//  Copyright © 2016 BigNerdRanch. All rights reserved.
//

import UIKit

class Photo {
    
    let title: String
    let remoteURL: NSURL
    var thumbnailURL : NSURL
    let photoID: String
    let dateTaken: NSDate
    var image: UIImage?
    var thumbnail: UIImage?
    
    init(title: String, photoID: String, remoteURL: NSURL, thumbnailURL: NSURL, dateTaken: NSDate) {
        self.title = title
        self.photoID = photoID
        self.remoteURL = remoteURL
        self.thumbnailURL = thumbnailURL
        self.dateTaken = dateTaken
    }
}

extension Photo: Equatable{}
func == (lhs: Photo, rhs: Photo) -> Bool {
    // Two Photos are the same if they have the same photoID
    return lhs.photoID == rhs.photoID
}
