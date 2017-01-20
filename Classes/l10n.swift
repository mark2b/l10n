//
//  l10n.swift
//
//  Created by Mark Berner on 19/01/2017.
//  Copyright © 2017 Mark Berner. All rights reserved.
//
import Foundation

extension String {
    
    public func l10n(_ resource: l10NResources.RawValue = l10NResources.default, locale:Locale? = nil, args:CVarArg...) -> String {
        var bundle = Bundle.main
        if let locale = locale {
            let language = locale.languageCode
            if let path = Bundle.main.path(forResource: language, ofType: "lproj"), let localizedBundle = Bundle(path: path) {
                bundle = localizedBundle
            }
        }

        var format:String
        if resource == l10NResources.default {
            format = bundle.localizedString(forKey: self, value: self, table: nil)
        }
        else {
            format = bundle.localizedString(forKey: self, value: self, table: resource)
        }
        if args.count == 0 {
            return format
        }
        else {
            return NSString(format: format, arguments:getVaList(args)) as String
        }
    }
}

public struct l10NResources : RawRepresentable {
    public typealias RawValue = String
    public static let `default` = "default"
    public init?(rawValue: l10NResources.RawValue) {
        return nil
    }
    public var rawValue: String
}





