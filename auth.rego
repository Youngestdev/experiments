package httpapi.authz
import input
default allow = false



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

allow {
  input.groupname == "EDITOR_ATAC"
}

allow {
  input.request_path == "v1/collections/obs"
  input.company == "geobeyond"
  input.request_method == "POST"
}

allow {
  input.request_path == "v1/collections/obs"
  input.company == "geobeyond"
  input.request_method == "DELETE"
}

