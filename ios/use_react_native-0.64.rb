#
# Copyright (c) Microsoft Corporation
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.
#

def include_react_native!(react_native:, target_platform:, project_root:, flipper_versions:)
  require_relative 'use_react_native-0.63.rb'
  include_react_native!(react_native: react_native,
                        target_platform: target_platform,
                        project_root: project_root,
                        flipper_versions: flipper_versions)

  pre_install do |installer|
    codegen_pre_install(installer)
  end
end
