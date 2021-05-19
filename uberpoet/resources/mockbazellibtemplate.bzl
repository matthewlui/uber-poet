# BUILD FILE SYNTAX: SKYLARK

#  Copyright (c) 2021 Uber Technologies, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This code was @generated by Uber Poet, a mock application generator.
# Check it out at https://github.com/uber/uber-poet

load("@build_bazel_rules_ios//rules:framework.bzl", "apple_framework")

apple_framework(
    name = "{0}",
    srcs = glob([
        "Sources/*.swift"
    ]),
    sdk_frameworks = [
        "Foundation",
        "UIKit",
    ],
    platforms = {{"ios": "12.0"}},
    swift_version = "5.0",
    visibility = ["//visibility:public"],
    xcconfig = {{
        "SWIFT_WHOLE_MODULE_OPTIMIZATION[config=Debug]": "{2}",
    }},
    deps = [
        {1}
    ],
)
