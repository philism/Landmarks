//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Philip Smith on 10/25/19.
//  Copyright © 2019 Philip Smith. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
	@EnvironmentObject var userData: UserData
	
    var body: some View {
		List {
			Toggle(isOn: $userData.showFavoritesOnly) {
				Text("Favorites Only")
			}
			
			ForEach(userData.landmarks) { landmark in
				if !self.userData.showFavoritesOnly || landmark.isFavorite {
					NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
						LandmarkRow(landmark: landmark)
					}
				}
			}
		}
		.navigationBarTitle(Text("Landmarks"))
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
		ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
			LandmarkList()
			.environmentObject(UserData())
				.previewDevice(PreviewDevice(rawValue: deviceName))
				.previewDisplayName(deviceName)
		}
    }
}
