class AworkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awork-cli"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.4.2/awork-osx-arm64.tar.gz"
      sha256 "00c14aee5ca97dadb3cb36b11fe029fdc72b5e26c805690e74731f53d6b5cf32"
    end

    on_intel do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.4.2/awork-osx-x64.tar.gz"
      sha256 "0793a344cf4bdef2b8971c9df724a7fc86eb2ede6fcfc6e95914b379d7e15924"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awork-cli/releases/download/v0.4.2/awork-linux-x64.tar.gz"
    sha256 "c5edecfc70729381294ba02319c43adbd3a12dacea6fb796f6d37c0c751a17da"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
