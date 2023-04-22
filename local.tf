locals {
  # local needed for function name to prevent cycle error between
  # service account and function
  function_name = "terraform-function"
}