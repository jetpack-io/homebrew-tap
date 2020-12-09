class Foo < Formula
  desc "Jetpack"
  homepage "https://www.jetpack.io"

  url "https://releases.jetpack.io/jetpack/0.1.0/jetpack_0.1.0-alpha_darwin_amd64.zip"

  sha256 "6578bd69ea4f2c37e0ef8a82d111a70806a221de4c40853ce5e1b42220195100"
  # Version numbers should follow the semantic versioning spec
  version "0.1.0-alpha"
  bottle :unneeded

  def install
    bin.install "jetpack"
  end

  test do
    system "#{bin}/jetpack version"
  end
end
