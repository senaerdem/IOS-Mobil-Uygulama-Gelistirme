//
//  TableViewHucre.swift
//  Custom Cell Table
//
//  Created by Sena Nur Erdem on 27.02.2023.
//

import UIKit

protocol TableViewHucreProtocol {
    func hucreUzerindekiButtonTiklandi(indexPath:IndexPath)
}

class TableViewHucre: UITableViewCell {

    @IBOutlet weak var kisiAdLabel: UILabel!
    
    var hucreProtocol:TableViewHucreProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func buttonTikla(_ sender: Any) {
        hucreProtocol?.hucreUzerindekiButtonTiklandi(indexPath: indexPath!)
    }
}

