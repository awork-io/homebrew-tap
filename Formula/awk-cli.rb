class AwkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awk-cli"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.2.3/awork-osx-arm64.tar.gz"
      sha256 "df4cd5cd83b8ab52d05e2e5dc0a316ebf0709f6140aa207f572bbebad8cbb0ec"
    end

    on_intel do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.2.3/awork-osx-x64.tar.gz"
      sha256 "4ea3ec3090adcbf9530e83f4a97d4e8f8c024c2e0073da6f86a751a00fe31c81"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awk-cli/releases/download/v0.2.3/awork-linux-x64.tar.gz"
    sha256 "ac5b37bdaf1b22cc27eb4fa0ee9c19276a5035cac49c9fa7f528ca4edb242d0b"
  end

  def install
    bin.install "awk-cli"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awk-cli --help")
  end
end
