//
//  Localization.swift
//  TestLocalization
//
//  Created by Denny Mathew on 15/05/17.
//  Copyright © 2017 Denny Mathew. All rights reserved.
//

import Foundation
import UIKit

// constants
let APPLE_LANGUAGE_KEY = "AppleLanguages"
/// L102Language
class L102Language {
    /// get current Apple language
    class func currentAppleLanguage() -> String{
        let userdef = UserDefaults.standard
        let langArray = userdef.object(forKey: APPLE_LANGUAGE_KEY) as! NSArray
        let current = langArray.firstObject as! String
        return current
    }
    /// set lang to be the first in Applelanguages list
    class func setAppleLAnguageTo(lang: String) {
        let userdef = UserDefaults.standard
        userdef.set([lang,currentAppleLanguage()], forKey: APPLE_LANGUAGE_KEY)
        userdef.synchronize()
    }
}

func switchAppLanguage() {
    if L102Language.currentAppleLanguage() == "en" {
        L102Language.setAppleLAnguageTo(lang: "ar")
        
        UIView.appearance().semanticContentAttribute = .forceRightToLeft
        
        
    } else {
        L102Language.setAppleLAnguageTo(lang: "en")
        UIView.appearance().semanticContentAttribute = .forceLeftToRight
    }
}

