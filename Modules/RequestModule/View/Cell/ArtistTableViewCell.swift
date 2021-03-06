//
//  ArtistTableViewCell.swift
//  viperWorkspace
//
//  Created by iulik on 9/8/18.
//  Copyright © 2018 iulik. All rights reserved.
//

import UIKit
import AlamofireImage

final class ArtistTableViewCell: UITableViewCell {

    @IBOutlet weak var listeners: UILabel!
    @IBOutlet weak var artistImage: UIImageView!
    @IBOutlet weak var artistName: UILabel!
    
    var mostListenViewModel: MostListenArtistViewModel! {
        didSet {
            self.artistName.text = mostListenViewModel.artistName
            self.listeners.text = mostListenViewModel.listeners
            
            guard let imageURL = URL(string: mostListenViewModel.artistImageURL) else {
                return
            }
            self.artistImage.af_setImage(withURL: imageURL)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}
