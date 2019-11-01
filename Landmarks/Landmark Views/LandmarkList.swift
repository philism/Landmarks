//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Philip Smith on 10/25/19.
//  Copyright © 2019 Philip Smith. All rights reserved.
//

import SwiftUI

struct LandmarkList<DetailView: View>: View {
	@EnvironmentObject var userData: UserData
	
	let detailViewProducer: (Landmark) -> DetailView
	
    var body: some View {
		List {
			Toggle(isOn: $userData.showFavoritesOnly) {
				Text("Favorites Only")
			}
			
			ForEach(userData.landmarks) { landmark in
				if !self.userData.showFavoritesOnly || landmark.isFavorite {
					NavigationLink(
                    destination: self.detailViewProducer(landmark).environmentObject(self.userData)) {
                        LandmarkRow(landmark: landmark)
                    }
				}
			}
		}
		.navigationBarTitle(Text("Landmarks"))
    }
}


#if os(watchOS)
typealias PreviewDetailView = WatchLandmarkDetail
#else
typealias PreviewDetailView = LandmarkDetail
#endif

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {

/*		ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
			LandmarkList()
			.environmentObject(UserData())
				.previewDevice(PreviewDevice(rawValue: deviceName))
				.previewDisplayName(deviceName)
		}
    }
*/
		LandmarkList { PreviewDetailView(landmark: $0) }
			 .environmentObject(UserData())
	}
}
