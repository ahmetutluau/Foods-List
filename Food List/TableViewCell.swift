//
//  TableViewCell.swift
//  Food List
//
//  Created by MAC on 21.07.2022.
//

import UIKit

protocol TableViewCellProtocol {
    func clickBtnOnCell(indexPath : IndexPath)
}

class TableViewCell: UITableViewCell {
    
    var cellProtocol : TableViewCellProtocol?
    var indexPath : IndexPath?
    
    @IBOutlet weak var imageViewFood: UIImageView!
    @IBOutlet weak var labelFoodName: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func click(_ sender: Any) {
        cellProtocol?.clickBtnOnCell(indexPath: indexPath!)
    }
    
}
