class Captcp < Formula
  desc "A open source program for TCP analysis of PCAP files"
  homepage "http://research.protocollabs.com/captcp/index.html"
  url "https://github.com/hgn/captcp/archive/v1.9.tar.gz"
  sha256 "c7f61a15aba9aefa517ee3ebbd92d5ca9fd5abc4badad8fef99c4d37a95d13a3"

  def install
    system "make"
    system "make", "install"
  end
end
