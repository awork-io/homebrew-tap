class AworkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awork-cli"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.4.1/awork-osx-arm64.tar.gz"
      sha256 "99fc00e80ae3028f8cd2d70e9aa6975fb9341676570a4c7ea4020aca92e08732"
    end

    on_intel do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.4.1/awork-osx-x64.tar.gz"
      sha256 "c0fe6add4f2e05739cb975456b541558f9220d619e4a2ccdd8b02fbdd3004266"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awork-cli/releases/download/v0.4.1/awork-linux-x64.tar.gz"
    sha256 "0cd320a741126923e7cf91636794ee6fb658983944e7a57f8fdd1bdadd457f43"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
