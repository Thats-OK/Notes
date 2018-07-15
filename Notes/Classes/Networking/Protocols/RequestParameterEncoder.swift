//
//  RequestParameterEncoder.swift
//  Notes
//
//  Created by Omkar khedekar on 14/07/18.
//  Copyright © 2018 Omkar khedekar. All rights reserved.
//

import Foundation
protocol RequestParameterEncoder {
    func encode(_ parameters: [String: Any]) throws -> Data
}

enum ParameterEncoderError: CustomLocalizableError {

    private static let defaultTitle = "DEFAULT_ERROR_TITLE"
    private static let defaultMessage = "DEFAULT_ERROR_MESSAGE"

    case encodingFailed

    var localisedTitle: String {
        return type(of: self).defaultTitle.localised
    }

    var localisedMessage: String {
        return type(of: self).defaultMessage.localised
    }

}
