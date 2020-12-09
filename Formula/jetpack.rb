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

  def caveats
    <<~EOS
      Thanks for installing the command-line tool for jetpack.io
      Jetpack is currently available by invitation only. Before running, you
      will have to set the JETPACK_TOKEN environment variable to a valid access
      token. You might want to add that to your .bashrc (or equivalent):
        export JETPACK_TOKEN=value-provided-by-jetpack-team
      Once you've set the environment variable, you should be able to run:
        jetpack
    EOS
  end

  test do
    system "#{bin}/jetpack version"
  end
end
