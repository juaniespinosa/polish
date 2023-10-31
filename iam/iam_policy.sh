# Copyright 2023 Google LLC
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

export PROJECT_ID=$(gcloud config get-value project)

gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member=serviceAccount:aiongke@$PROJECT_ID.iam.gserviceaccount.com \
    --role=roles/container.admin

gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member=serviceAccount:aiongke@$PROJECT_ID.iam.gserviceaccount.com \
    --role=roles/compute.networkAdmin

gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member=serviceAccount:aiongke@$PROJECT_ID.iam.gserviceaccount.com \
    --role=roles/iam.serviceAccountAdmin

gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member=serviceAccount:aiongke@$PROJECT_ID.iam.gserviceaccount.com \
    --role=roles/resourcemanager.projectIamAdmin

gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member=serviceAccount:aiongke@$PROJECT_ID.iam.gserviceaccount.com \
    --role=roles/iam.serviceAccountUser

gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member=serviceAccount:aiongke@$PROJECT_ID.iam.gserviceaccount.com \
    --role=roles/gkehub.admin

gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member=serviceAccount:aiongke@$PROJECT_ID.iam.gserviceaccount.com \
    --role=roles/compute.storageAdmin

gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member=serviceAccount:aiongke@$PROJECT_ID.iam.gserviceaccount.com \
    --role=roles/storage.objectAdmin

gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member=serviceAccount:aiongke@$PROJECT_ID.iam.gserviceaccount.com \
    --role=roles/gkehub.gatewayAdmin

gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member=serviceAccount:aiongke@$PROJECT_ID.iam.gserviceaccount.com \
    --role=roles/logging.logWriter

gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member=serviceAccount:aiongke@$PROJECT_ID.iam.gserviceaccount.com \
    --role=roles/serviceusage.serviceUsageConsumer