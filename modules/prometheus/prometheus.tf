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

# data "local_file" "pod_monitor_yaml" {
#   filename = "${path.module}/config/pod_monitor.yaml"
# }

# data "local_file" "frontend_deployment" {
#   filename = "${path.module}/config/frontend-deployment.yaml"
# }

# data "local_file" "grafana_deployment" {
#   filename = "${path.module}/config/grafana-deployment.yaml"
# }

# data "local_file" "frontend_service" {
#   filename = "${path.module}/config/frontend-service.yaml"
# }

# data "local_file" "grafana_service" {
#   filename = "${path.module}/config/grafana-service.yaml"
# }

# locals {
#   prometheus_frontend = replace(data.local_file.frontend_deployment.content, "$PROJECT_ID", var.project_id)

# }

# resource "kubernetes_manifest" "pod_monitor" {
#   manifest = yamldecode(replace(data.local_file.pod_monitor_yaml.content, "$NAMESPACE", var.namespace))
# }

# resource "kubernetes_manifest" "prometheus_frontend" {
#   manifest = yamldecode(replace(local.prometheus_frontend, "$NAMESPACE", var.namespace))
# }

# resource "kubernetes_manifest" "prometheus_grafana" {
#   manifest = yamldecode(replace(data.local_file.grafana_deployment.content, "$NAMESPACE", var.namespace))
# }

# resource "kubernetes_manifest" "prometheus_frontend_service" {
#   manifest = yamldecode(replace(data.local_file.frontend_service.content, "$NAMESPACE", var.namespace))
# }

# resource "kubernetes_manifest" "prometheus_grafana_service" {
#   manifest = yamldecode(replace(data.local_file.grafana_service.content, "$NAMESPACE", var.namespace))
# }

resource "kubernetes_manifest" "manifests" {
  for_each = fileset("${path.module}/config/", "*.yaml")
  manifest = yamldecode(templatefile("${path.module}/config/${each.value}", { namespace: var.namespace, project_id: var.project_id}))
}
