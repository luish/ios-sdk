/**
 * Copyright IBM Corporation 2015
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation
import ObjectMapper

/** An error produced by the Speech to Text service. */
struct SpeechToTextError: Mappable {

    /// A description of the error that occurred.
    var error: String!

    /// Used internally to initialize a `SpeechToTextError` from JSON.
    init?(_ map: Map) { }

    /// Used internally to serialize and deserialize JSON.
    mutating func mapping(map: Map) {
        error <- map["error"]
    }
}
