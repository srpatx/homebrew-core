class LibatomicOps < Formula
  desc "Implementations for atomic memory update operations"
  homepage "https://github.com/ivmai/libatomic_ops/"
  url "https://github.com/ivmai/libatomic_ops/releases/download/v7.6.8/libatomic_ops-7.6.8.tar.gz"
  sha256 "1d6a279edf81767e74d2ad2c9fce09459bc65f12c6525a40b0cb3e53c089f665"

  bottle do
    cellar :any_skip_relocation
    sha256 "a09c08f2549218ac77f9dd979a71e3e107a5b2fbe381e40984ee28a070cdf3d9" => :mojave
    sha256 "321710f6a3a4446059ff63c8d609c46fdebbf1cb2270ffd0c812d93c2a55d246" => :high_sierra
    sha256 "83735d0d4dc412504092438a3ac7eb6efc17659b589ece28eb75aacba6d7eb97" => :sierra
    sha256 "af64bc9cc26b2222ecd233df18b908daf6de49a47c48505f2ee74858bfa499a4" => :el_capitan
  end

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make"
    system "make", "check"
    system "make", "install"
  end
end
