variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {
    Event = "Regional Summit 2021"
    Cloud = "AWS"
  }
}