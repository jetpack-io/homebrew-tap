class Foo < Formula
  desc "Jetpack"
  homepage "https://www.jetpack.io"

  url "https://releases.jetpack.io/jetpack/0.1.0/jetpack_0.1.0-alpha_darwin_amd64.zip"

  sha256 "0a2358a0cbf1965101b73404a7a93ff8a2da084dec6f64d5e74f64aa2ce51754"
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
