require "formula"

class ocamlfuse < Formula
  url "https://github.com/astrada/google-drive-ocamlfuse/tarball/master.tar.gz"
  homepage "https://github.com/astrada/google-drive-ocamlfuse"
  sha1 "dc5c0563c2a43072c53d23fd7e51aafe0b79474c"

  depends_on "ocaml"
  depends_on "opam"
  depends_on "sqlite3"

  def install
    system "opam init"
    system "CPPFLAGS='-DFUSE_USE_VERSION=26 -I/usr/local/include/osxfuse' opam install ocamlfuse"
  end
end
