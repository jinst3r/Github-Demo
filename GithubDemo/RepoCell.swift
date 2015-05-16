//
//  repoCell.swift
//  GithubDemo
//
//  Created by Jon Choi on 5/13/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {
    
    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var byLabel: UILabel!
    @IBOutlet weak var userHandleLabel: UILabel!
    @IBOutlet weak var ownerAvatarImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var starStringLabel: UILabel!
    @IBOutlet weak var forkStringLabel: UILabel!
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var forkImageView: UIImageView!
    
    
    var repo: GithubRepo! {
        didSet {
        repoNameLabel.text = repo.name
        byLabel.text = "By"
        userHandleLabel.text = repo.ownerHandle
        ownerAvatarImageView.setImageWithURL(NSURL(string: repo.ownerAvatarURL!))
        descriptionLabel.text = repo.description
        starStringLabel.text = "\(repo.stars!)"
        forkStringLabel.text = "\(repo.forks!)"
        starImageView.image = UIImage(named: "star")
        forkImageView.image = UIImage(named: "fork")
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
