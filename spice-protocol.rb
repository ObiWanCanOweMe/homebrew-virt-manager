class SpiceProtocol < Formula
  homepage "http://www.spice-space.org/"
  url "http://pkgs.fedoraproject.org/repo/pkgs/spice-protocol/spice-protocol-0.12.7.tar.bz2/799707321e88df4ecd17c4ccb0cc4ffe/spice-protocol-0.12.7.tar.bz2"
  version "0.12.7"
  sha256 "96c6cb73361816ed19bfd8536f65d4547da35709aa00af1380e650c1174916c2"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
