# tflint configuration
# github.com/terraform-linters/tflint

config {
  # Enable lint checks against Terraform Modules
  module = true
  # Disables forcing a 0 return code on finding errors
  force  = false
  # Use the 'compact' output format; integrates with GitHub to map problems to line references
  format = "compact"
}

# Prevent the use of the lesser standard Terraform in-line comment style "//"
# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_comment_syntax.md
rule "terraform_comment_syntax" {
  enabled = true
}

# Prevent the use of the deprecated dot synax for list items
# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_deprecated_index.md
rule "terraform_deprecated_index" {
  enabled = true
}

# Require Terraform Outputs to have descriptions
# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_documented_outputs.md
rule "terraform_documented_outputs" {
  enabled = true
}

# Require Terraform Variables to have descriptions
# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_documented_variables.md
rule "terraform_documented_variables" {
  enabled = true
}

# Ensure that lists aren't compared to empty lists, as it can return incorrect responses
# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_empty_list_equality.md
rule "terraform_empty_list_equality" {
  enabled = true
}

# Enforce the standardised Terraform naming convention
# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_naming_convention.md
rule "terraform_naming_convention" {
  enabled = true
}

# Require all providers to have version constraints within required_providers in the terraform block
# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_required_providers.md
rule "terraform_required_providers" {
  enabled = true
}

# Require Terraform blocks to define required_version
# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_required_version.md
rule "terraform_required_version" {
    enabled = true
}

# Require module to follow the standard Terraform module file structure
# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_standard_module_structure.md
rule "terraform_standard_module_structure" {
    enabled = true
}

# Require Terraform Variables to have types declared
# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_typed_variables.md
rule "terraform_typed_variables" {
    enabled = true
}

# Disallow variables, data sources and locals that are not used
# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_unused_declarations.md
rule "terraform_unused_declarations" {
  enabled = true
}

# Require Unused Terraform Providers to be removed
# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_unused_required_providers.md
rule "terraform_unused_required_providers" {
  enabled = true
}


# Enables the AWS plugin to perform checks on AWS specific resources
plugin "aws" {
  enabled = true
  version = "0.45.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
  deep_check = false
  access_key = ${{ secrets.AWS_ACCESS_KEY_ID }}
  secret_key = ${{ secrets.AWS_SECRET_ACCESS_KEY }}
  region     = "eu-west-2"
}
