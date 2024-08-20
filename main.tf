locals {
  _cidr_prefix = tonumber(
    split(
      "/",
      var.cidr
    )[1]
  )

  host_numbers = range(
    pow(2, 32 - local._cidr_prefix)
  )

  ip_addresses = [
    for host_number in local.host_numbers : cidrhost(var.cidr, host_number)
  ]
}
