locals {
  execute_command = "chmod +x {{ .Path }}; {{ .Vars }} sudo -E sh '{{ .Path }}'"
  timestamp = regex_replace(timestamp(), "[- TZ:]", "")
}
