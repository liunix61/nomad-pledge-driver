job "env" {
  datacenters = ["dc1"]
  type        = "sysbatch"

  group "group" {
    task "env" {
      driver = "pledge"
      config {
        command = "env"
        args    = []
        pledges = "stdio rpath"
      }
    }
  }
}
