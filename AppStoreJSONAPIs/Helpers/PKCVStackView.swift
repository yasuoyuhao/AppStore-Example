//
//  PKCVStackView.swift
//  AppStoreJSONAPIs
//
//  Created by 陳囿豪 on 2019/4/19.
//  Copyright © 2019 yasuoyuhao. All rights reserved.
//

import UIKit

class PKCVStackView: UIStackView {

    init(arrangedSubviews: [UIView], spacing: CGFloat = 0) {
        super.init(frame: .zero)
        
        arrangedSubviews.forEach({addArrangedSubview($0)})
        
        self.spacing = spacing
        self.axis = .vertical
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
