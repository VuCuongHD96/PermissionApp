//
//  PermissionCell.swift
//  PermissionApp
//
//  Created by Sun on 07/09/2022.
//

import UIKit

protocol PermissionCellDelegate {
    func gotoSettingScreen()
}

final class PermissionCell: UITableViewCell, XibSceneBase {
    
    // MARK: - Outlet
    @IBOutlet private weak var featureImageView: UIImageView!
    @IBOutlet private weak var permissionButton: PermissionButton!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var summanyLabel: UILabel!
    
    // MARK: - Define
    typealias SettingsHandler = () -> Void
    
    // MARK: - Property
    var data: PermissionType!
    var delegate: PermissionCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    // MARK: - Data
    func setupData(data: PermissionType) {
        self.data = data
        titleLabel.text = data.name
        summanyLabel.text = data.summany
        var imageName = ""
        data.checkStatus { [weak self] status in
            guard let self = self else { return }
            switch status {
            case .notAllow:
                imageName = data.emptyImage
            case .allowed:
                imageName = data.fullImage
            }
            let image = UIImage(named: imageName)
            self.featureImageView.image = image
            self.permissionButton.checkPermissionStatus(status)
        }
    }
    
    // MARK: - Action
    @IBAction func action(_ sender: PermissionButton) {
        data.requestPermission()
        data.permissionHandler = { [weak self] permissionStatus in
            guard let self = self else { return }
            self.setupData(data: self.data)
            if permissionStatus == .notAllow {
                self.delegate?.gotoSettingScreen()
            }
        }
    }
}
