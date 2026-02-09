class AworkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awork-cli"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.3.6/awork-osx-arm64.tar.gz"
      sha256 "4d52291ed7d9a3a33b7c60940de7f63d1f249826268ced86283655e322c7adfb"
    end

    on_intel do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.3.6/awork-osx-x64.tar.gz"
      sha256 "2d82fd14c06a060f85a4547ba5b768e94a8ea42a376de5075c7767a8ba1d8c02"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awork-cli/releases/download/v0.3.6/awork-linux-x64.tar.gz"
    sha256 "dba31db842b117b0c05778c30cb2f93b037a1feba97389a6bdcd44816d44e264"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
