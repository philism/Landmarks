//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by Philip Smith on 11/1/19.
//  Copyright © 2019 Philip Smith. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
	LandmarkList { WatchLandmarkDetail(landmark: $0) }
		.environmentObject(UserData())

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList { WatchLandmarkDetail(landmark: $0) }
		.environmentObject(UserData())
    }
}
