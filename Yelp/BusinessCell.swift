
 //
//  BusinessCell.swift
//  Yelp
//
//  Created by Juan Bravo on 2/26/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var restaurantImage: UIImageView!
    @IBOutlet weak var ratingsImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var totalReviewsLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var restaurantTypeLabel: UILabel!
    @IBOutlet weak var expensiveLabel: UILabel!
    
    var business: Business! {
        didSet{
            titleLabel.text = business.name
            restaurantImage.setImageWith(business.imageURL!)
            ratingsImage.setImageWith(business.ratingImageURL!)
            distanceLabel.text = business.distance
            totalReviewsLabel.text = "\(business.reviewCount!) Reviews"
            addressLabel.text = business.address
            restaurantTypeLabel.text = business.categories
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        restaurantImage.layer.cornerRadius = 3
        restaurantImage.clipsToBounds = true
        // Initialization code
        
        titleLabel.preferredMaxLayoutWidth = titleLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel.preferredMaxLayoutWidth = titleLabel.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
