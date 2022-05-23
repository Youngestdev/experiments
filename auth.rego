package httpapi.authz
import input
default allow = false



allow {
  input.company == data.items[i].name
  input.request_method == "GET"
}

allow {
  input.request_path == ["v1", "collections", ""]
  input.request_path == ["v1", "collections", "lakes", ""]
}

allow {
  
  input.company == "geobeyond"
  some i 
  data.items[i].name == input.preferred_username 
  data.items[i].everyone == input.groupname
}

