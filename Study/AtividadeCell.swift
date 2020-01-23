//
//  AtividadeCell.swift
//  Study
//
//  Created by David Augusto on 23/01/20.
//  Copyright © 2020 David Augusto. All rights reserved.
//

import UIKit

class AtividadeCell: UITableViewCell {
    
    @IBOutlet weak var nomeDaAtividade: UILabel!
    @IBOutlet weak var descricao: UILabel!
    @IBOutlet weak var data: UILabel!
    @IBOutlet weak var mes: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

