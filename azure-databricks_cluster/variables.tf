variable "cluster_name" {
  type = string
}

variable "spark_version" {
  type = string
}

variable "node_type_id" {
  type = string
}

variable "autotermination_minutes" {
  type = number
}

#variable "tags" {
#  description = "Recebe os valores de FinOps"
#  type        = map(any)
#}

variable "spark_delta_preview" {
  description = "Spark Delta Preview"
  type        = bool
}

variable "num_workers" {
  description = "Number of workers"
  type        = number
}

variable "workspace_name" {
  description = "Worskpace Name"
  type        = string
}

variable "databricks_rg" {
  description = "Databricks Resource Group"
  type        = string
}

variable "databricks_pat_token" {
  description = "Databricks Pat Token"
  type        = string
}

variable "pinned" {
  description = "Determina se o cluster deve ser fixado no workspace"
  type        = bool
}

variable "resource_class" {
  description = "Classe de recurso para o cluster Databricks"
  type        = string
}

variable "runtime_version" {
  description = "Runtime version para o cluster Databricks"
  type        = string
}

variable "min_workers" {
  description = "Número mínimo de workers para o cluster Databricks"
  type        = number
}

variable "max_workers" {
  description = "Número máximo de workers para o cluster Databricks"
  type        = number
}

variable "driver_node_type_id" {
  description = "Tipo de nó do driver para o cluster Databricks"
  type        = string
}

variable "location" {
  type = string
}

variable "sku" {
  type    = string
  default = "trial"
}

variable "empresa" {
  type = string
}

variable "centro_custo" {
  type = string
}

variable "departamento" {
  type = string
}

variable "app" {
  type = string
}

variable "componente" {
  type = string
}

variable "ambiente" {
  type = string
}

variable "bo" {
  type = string
}

variable "to" {
  type = string
}

variable "gerenciamento" {
  type = string
}

variable "enable_autoscale" {
  description = "Enable autoscale in Databricks cluster"
  type        = bool
}

variable "subscription_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "tenant_id" {
  type = string
}