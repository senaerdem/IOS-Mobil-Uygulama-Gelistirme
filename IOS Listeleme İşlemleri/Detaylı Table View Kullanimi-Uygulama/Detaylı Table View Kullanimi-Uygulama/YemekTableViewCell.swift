//
//  YemekTableViewCell.swift
//  Detaylı Table View Kullanimi-Uygulama
//
//  Created by Sena Nur Erdem on 27.02.2023.
//

import UIKit

protocol YemekTableViewCellProtocol {
    func siparisVer(indexPath:IndexPath)
}

class YemekTableViewCell: UITableViewCell {

    @IBOutlet weak var labelYemekFiyat: UILabel!
    @IBOutlet weak var labelYemekAdi: UILabel!
    @IBOutlet weak var yemekResimImageView: UIImageView!
    
    var hucreProtocol:YemekTableViewCellProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func siparisverButton(_ sender: Any) {
        hucreProtocol?.siparisVer(indexPath: indexPath!)
    }
}
