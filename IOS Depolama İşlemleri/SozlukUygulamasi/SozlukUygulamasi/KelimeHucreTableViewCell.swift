//
//  KelimeHucreTableViewCell.swift
//  SozlukUygulamasi
//
//  Created by Sena Nur Erdem on 26.10.2023.
//

import UIKit

class KelimeHucreTableViewCell: UITableViewCell {

    @IBOutlet weak var turkceLabel: UILabel!
    @IBOutlet weak var ingilizceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
