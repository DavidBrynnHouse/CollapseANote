//
//  ViewController.swift
//  CollapseANote
//
//  Created by David House on 2/17/21.
//

import UIKit

class CollapseNoteViewController: UITableViewController {

    let titleArray = ["Troy and Abed", "Shirly and Annie", "Pierce and Ben"]
    let noteArray = ["The best", "Pretty cool", "The worst"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.reuseIdentifier, for: indexPath) as! NoteTableViewCell
        
        cell.titleLabel?.text = titleArray[indexPath.row]
        cell.textLabel?.text = noteArray[indexPath.row]
        
        return cell
    }
    
}

class NoteTableViewCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var mainTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        titleLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 16.0)
        mainTextLabel.font = UIFont(name:"HelveticaNeue", size: 14.0)
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 1
        cardView.layer.shadowOffset = .zero
        cardView.layer.shadowRadius = 10
        cardView.layer.cornerRadius = 8
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

