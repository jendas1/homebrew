require "formula"

class google-drive-ocamlfuse < Formula
  url "https://github.com/astrada/google-drive-ocamlfuse/tarball/master.tar.gz"
  homepage "https://github.com/astrada/google-drive-ocamlfuse"
  sha1 "dc5c0563c2a43072c53d23fd7e51aafe0b79474c"

  depends_on "ocaml"
  depends_on "opam"

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
#   system "cmake", ".", *std_cmake_args
    system "make install"
  end
end
