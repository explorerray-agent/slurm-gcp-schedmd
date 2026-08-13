# Copyright (C) SchedMD LLC.
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

###########
# GENERAL #
###########

project_id = "<PROJECT_ID>"
zone       = "us-central1-a"

#########
# IMAGE #
#########

# NOTE: Your Project ID will be automatically appended
source_image_project_id = "ubuntu-os-cloud"

#source_image        = null
source_image_family = "ubuntu-2404-lts"

# *NOT* intended for production use
# skip_create_image = true

#############
# PROVISION #
#############

# slurm_version = null

# Whamcloud publishes no ubuntu2404 client repository, so the lustre role has
# nothing to install here. See docs/images.md.
install_lustre = false

# The 'latest' version file pins CUDA 12.2.1 / driver 535.86.10 (July 2023),
# which predates noble's 6.8 kernel and gcc-13. Use a driver line validated
# against them instead; see ansible/roles/cuda/vars/version/b560.yml.
nvidia_version = "560"
