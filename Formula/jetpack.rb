class Jetpack < Formula
  desc "Jetpack"
  homepage "https://www.jetpack.io"

  url "https://releases.jetpack.io/jetpack/0.1.0-preview.2021.02.26/jetpack_0.1.0-preview.2021.02.26_darwin_amd64.tar.gz"

  sha256 "cb9a2fbc6a4de9c8a78404ff7ade1c7c404538b6d0535f4e6f325dc3bf97987e"
  # Version numbers should follow the semantic versioning spec
  version "0.1.0-preview.2021.02.26"
  bottle :unneeded

  def install
    bin.install "jetpack"
  end

  test do
    system "#{bin}/jetpack version"
  end
end
