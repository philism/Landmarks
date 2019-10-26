//
//  UserData.swift
//  Landmarks
//
//  Created by Philip Smith on 10/25/19.
//  Copyright © 2019 Philip Smith. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
	@Published var showFavoritesOnly = false
	@Published var landmarks = landmarkData
}
