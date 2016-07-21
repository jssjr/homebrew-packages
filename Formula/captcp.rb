class Captcp < Formula
  desc "A open source program for TCP analysis of PCAP files"
  homepage "http://research.protocollabs.com/captcp/index.html"
  url "https://github.com/hgn/captcp/archive/v1.9.tar.gz"
  sha256 "c7f61a15aba9aefa517ee3ebbd92d5ca9fd5abc4badad8fef99c4d37a95d13a3"

  depends_on "python"
  depends_on "py2cairo"
  depends_on "numpy"
  depends_on "imagemagick"
  depends_on "gnuplot" => :recommended
  depends_on "mactex" => :optional

  def install
    %w[
    dpkt==1.8.7
    python-geoip==1.2
    ].each do |pip_dep|
      system "pip", "install", pip_dep
    end

    inreplace "captcp.py", "#!/usr/bin/env python2", "#!/usr/bin/env python"
    system "make", "PREFIX=#{prefix}"
    system "make", "install", "PREFIX=#{prefix}"

  end
end
