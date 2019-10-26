//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Philip Smith on 10/26/19.
//  Copyright © 2019 Philip Smith. All rights reserved.
//

import SwiftUI

struct CategoryItem: View {
	var landmark: Landmark
	
    var body: some View {
		VStack(alignment: .leading) {
			landmark.image
				.renderingMode(.original)
				.resizable()
				.frame(width: 155, height: 155)
				.cornerRadius(5)
			Text(landmark.name)
				.foregroundColor(.primary)
				.font(.caption)
		}
		.padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: landmarkData[0])
    }
}
