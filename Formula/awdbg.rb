class Awdbg < Formula
  desc "Investigate awork tasks, Sentry issues, and SigNoz traces"
  homepage "https://github.com/awork-io/awork-debugger"
  version "0.2.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://api.github.com/repos/awork-io/awork-debugger/releases/assets/552207396",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: Bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}",
          ]
      sha256 "d6e45ff2f9b758fa0413462ddd6956216ed217637f825fa0216d56093fceb6bc"
    else
      url "https://api.github.com/repos/awork-io/awork-debugger/releases/assets/552207394",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: Bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}",
          ]
      sha256 "304c3cf36e7789497349c7992ae5fc440e330277640ceb019dd1c6d3cf237e73"
    end
  end

  def install
    bin.install "awdbg"
  end

  test do
    system "#{bin}/awdbg", "--version"
  end
end
