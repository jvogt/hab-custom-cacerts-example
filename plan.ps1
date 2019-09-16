$pkg_name="cacerts"
$pkg_origin="core"
$pkg_version="2019.09.16"
$pkg_license=@('MPL-2.0')
$pkg_maintainer="You"

function Invoke-Build { }

function Invoke-Install {
  mkdir "$pkg_prefix/ssl/certs"
  Copy-Item "cacert.pem" "$pkg_prefix/ssl/certs" -Force
  Copy-Item "cacert.pem" "$pkg_prefix/ssl/cert.pem" -Force
}
