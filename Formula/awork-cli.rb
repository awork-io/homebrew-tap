class AworkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awork-cli"
  version "0.3.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.3.8/awork-osx-arm64.tar.gz"
      sha256 "486233656f61052731428ed919e54fd51d6259c486cbb6b04cca6257dde4b749"
    end

    on_intel do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.3.8/awork-osx-x64.tar.gz"
      sha256 "9b3fd1250d1fe5df90b371255779e1c07660a985293047e40e69467ef7766503"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awork-cli/releases/download/v0.3.8/awork-linux-x64.tar.gz"
    sha256 "33ef61ff20ed3fcc931f8bdca3b32b5a81669e7868c4554693f3069e278efffa"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
