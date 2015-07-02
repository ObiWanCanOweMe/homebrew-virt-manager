class Usbredir < Formula
  homepage "http://www.spice-space.org/home.html"
  url "http://pkgs.fedoraproject.org/repo/pkgs/usbredir/usbredir-0.7.tar.bz2/bc096f160e4ebb848c3a0f0fbf9500fc/usbredir-0.7.tar.bz2"
  sha256 "0a63a0712b5dc62be9cca44f97270fea5d1ec1fe7dde0c11dc74a01c8e2006aa"

  depends_on "pkg-config" => :build
  depends_on "libtool" => :build

  depends_on "libusb"

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
