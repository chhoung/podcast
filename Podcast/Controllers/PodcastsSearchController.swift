//
//  PodcastsSearchController.swift
//  Podcast
//
//  Created by 11ien on 4/27/20.
//  Copyright © 2020 11ien. All rights reserved.
//

import UIKit

class PodcastsSearchController: UITableViewController{
    
    let podcasts = [
        Podcast(name: "Eternal Atake", authorName: "SpaceJumper69"),
        Podcast(name: "Peaky Blinder", authorName: "Johny Boy"),
        Podcast(name: "West World", authorName: "Noobmaster69")
    ]
    
    let cellId = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        tableView.register( UITableViewCell.self , forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return podcasts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let podcast = self.podcasts[indexPath.row]
        
        cell.textLabel?.text = "\(podcast.name)\n\(podcast.authorName)"
        cell.textLabel?.numberOfLines = -1
        cell.imageView?.image = #imageLiteral(resourceName: "podcast")
        return cell
    }
}
