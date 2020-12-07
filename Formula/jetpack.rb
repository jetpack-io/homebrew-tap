class Foo < Formula
  desc "Jetpack"
  homepage "https://www.jetpack.io"

  # For now download releases directly from GitHub, but eventually we should host
  # them at releases.jetpack.io:
  # url "https://releases.jetpack.io/jetpack/v0.1.0/jetpack_0.1.0_darwin_amd64.zip"
  url "https://github.com/jetpack-io/jetpack/releases/download/v0.1.0/jetpack_0.1.0_darwin_amd64.zip"

  sha256 "85cc828a96735bdafcf29eb6291ca91bac846579bcef7308536e0c875d6c81d7"
  version "0.1.0"
  bottle :unneeded

  def install
    bin.install "jetpack"
  end

  test do
    system "#{bin}/jetpack version"
  end
end
