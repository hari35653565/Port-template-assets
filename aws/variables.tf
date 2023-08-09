variable "resources" {
  type        = list(string)
  description = "List of supported resources to deploy in the stack. A resource must have a submodule with config.json, policy.json , event_rule.yaml and blueprint.tf"
}

variable "invoke_function" {
  type        = bool
  default     = true
  description = "Flag to determine whether to invoke the exporter function at the end of the deployment"
  validation {
    condition     = var.invoke_function == true || var.invoke_function == false
    error_message = "Invoke function must be either true or false."
  }
}
