pkg_name=cacerts
pkg_origin=core
pkg_description="Custom CA Certs (should be a mix of public certs + internal)"
pkg_license=('MPL-2.0')
pkg_maintainer="You"
pkg_deps=()
pkg_build_deps=()

pkg_version="2019.09.16"

do_build() {
  return 0
}

do_install() {
  mkdir -pv "$pkg_prefix/ssl/certs"
  cp -v cacert.pem "$pkg_prefix/ssl/certs"
  ln -sv certs/cacert.pem "$pkg_prefix/ssl/cert.pem"
}