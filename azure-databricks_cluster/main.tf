module "tags_finops" {
  source        = "git::https://PUSRBTRO:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Tags_FinOps?ref=Azu-Tags_FinOps_V1"
  centro_custo  = var.centro_custo
  empresa       = var.empresa
  departamento  = var.departamento
  app           = var.app
  componente    = var.componente
  ambiente      = var.ambiente
  bo            = var.bo
  to            = var.to
  gerenciamento = var.gerenciamento
}

module "databricks_cluster" {
  source                  = "git::https://pusrdvop:OTA5OTk5OTQ5NjM5OnUGGcZ4iOMS5I6eMPBMKf+VRrtA@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Databricks_Cluster/?ref=Azu-Databricks_Cluster_V5"
  location              = var.location
  sku                   = var.sku
  centro_custo          = var.centro_custo
  empresa               = var.empresa
  departamento          = var.departamento
  app                   = var.app
  componente            = var.componente
  ambiente              = var.ambiente
  bo                    = var.bo
  to                    = var.to
  gerenciamento         = var.gerenciamento
  tags                    = module.tags_finops.tags
  cluster_name            = var.cluster_name
  spark_version           = var.spark_version
  autotermination_minutes = var.autotermination_minutes
  spark_delta_preview     = var.spark_delta_preview
  num_workers             = var.num_workers
  workspace_name          = var.workspace_name
  databricks_rg           = var.databricks_rg
  driver_node_type_id     = var.driver_node_type_id
  min_workers             = var.min_workers
  max_workers             = var.max_workers
  runtime_version         = var.runtime_version
  resource_class          = var.resource_class
  pinned                  = var.pinned
  node_type_id            = var.node_type_id
  enable_autoscale        = var.enable_autoscale
}

