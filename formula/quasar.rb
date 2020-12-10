require "formula"
require_relative "lib/private_strategy"
class Quasar < Formula
  desc "CLI pro komunikaci s můstkem"
  homepage "https://github.com/myrepo/mytool"
  url "https://github.com/tkudlickaavitocz/homebrew-quasar/releases/tag/v0.0.1.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "c4bb34abd18ef743572c085fcbaf0a4d5c0770a7c889ae5ce422213bb35e80d4"
  head "https://github.com/tkudlickaavitocz/homebrew-quasar.git"

  def install
    bin.install "quasar"
  end

  # Homebrew requires tests.
  test do
    assert_match "0.0.1", shell_output("#{bin}/quasar -V", 2)
  end
end