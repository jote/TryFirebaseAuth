// Copyright 2020 Google LLC
// Copyright [2024] jote_
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import UIKit

/// Model object for a section in tableView
struct Section: Sectionable {
    var headerDescription: String?
    var footerDescription: String?
    var items: [Item]
}

/// Model object for a cell in a tableView section
struct Item: Itemable {
    var isEditable: Bool
    var hasNestedContent: Bool
    var isChecked: Bool
    var title: String?
    var detailTitle: String?
    var textColor: UIColor?

    private var _image: UIImage?
    var image: UIImage? {
        get { _image ?? UIImage(named: title ?? "?") }
        set { _image = newValue }
    }

    init(
        title: String? = nil,
        detailTitle: String? = nil,
        textColor: UIColor? = nil,
        isEditable: Bool = false,
        hasNestedContent: Bool = false,
        isChecked: Bool = false,
        image: UIImage? = nil
    ) {
        self.isEditable = isEditable
        self.hasNestedContent = hasNestedContent
        self.isChecked = isChecked
        self.title = title
        self.detailTitle = detailTitle
        self.textColor = textColor
        self._image = image
    }
}
