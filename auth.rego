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

allow {
  some i 
  data.items[i].u == input.y 
  data.items[i].s == input.o
  input.request_path == "v1/collections/obs"
  input.company == "geobeyond"
  input.request_method == "POST"
}

allow {
  input.request_path == "v1/collections/geo"
  input.company == "osgeo"
  input.request_method == "DELETE"
}

allow {
  some i 
  data.items[i].u == input.y 
  data.items[i].s == input.o
  input.request_path == "v1/collections/obs"
  input.company == "geobeyond"
  input.request_method == "POST"
}

allow {
  input.request_path == "v1/collections/geo"
  input.company == "osgeo"
  input.request_method == "GET"
}

allow {
  input.request_path[0] == "v1" 
  input.request_path[1] == "collections" 
  
  input.request_path[2] != "obs"
  input.company == data.items[i].name
  input.request_method == "GET"
}

allow {
  
  input.company == "geobeyond"
  some i 
  data.items[i].name == input.preferred_username 
  data.items[i].groupname == input.groupname
}

allow {
  input.groupname == "EDITOR_ATAC"
}

allow {
  input.groupname == ["v1", "collections", "test-data", ""]
  input.name == "admin"
}

allow {
  input.request_path == ["v1", "collections", "lakes", ""]
  input.groupname == "admin"
}

allow {
  input.request_path[0] == "v1" 
  input.request_path[1] == "collections" 
  
  input.request_path[2] != "obs"
  input.company == data.items[i].name
  input.request_method == "GET"
}

allow {
  
  input.company == "geobeyond"
  some i 
  data.items[i].name == input.preferred_username 
  data.items[i].groupname == input.groupname
}

allow {
  input.groupname == "EDITOR_ATAC"
}

allow {
  input.groupname == ["v1", "collections", "test-data", ""]
  input.name == "admin"
}

allow {
  input.request_path == ["v1", "collections", "lakes", ""]
  input.groupname == "admin"
}

