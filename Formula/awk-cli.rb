class AwkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awk-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.3.0/awork-osx-arm64.tar.gz"
      sha256 "55e3a854557b73db5935f8f0e883732db2cf83b77a83876d288060f2b1defb12"
    end

    on_intel do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.3.0/awork-osx-x64.tar.gz"
      sha256 "0d960e110dfd60191addae7f53bd42e019552a0a6e93608013df98705a5b2a09"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awk-cli/releases/download/v0.3.0/awork-linux-x64.tar.gz"
    sha256 "dff22991f36cea4c3b4e633c8f3fb93c26ec99a178da66f68ee9513297abb040"
  end

  def install
    bin.install "awk-cli"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awk-cli --help")
  end
end
