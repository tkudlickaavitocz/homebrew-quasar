require "formula"
require_relative "lib/custom_download_strategy"
class Quasar < Formula
  desc "CLI pro komunikaci s můstkem"
  homepage "https://github.com/tkudlickaavitocz/quasar-cli/"
  url "https://github.com/tkudlickaavitocz/quasar-cli/releases/latest/download/quasar.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "7ca01125dc3de0971918eed08a3b8949a76345a6b4b6365907169825e67a61ee"
  head "https://github.com/tkudlickaavitocz/quasar-cli.git"
  version "0.0.2"

  def install
    bin.install "quasar"
  end

  # Homebrew requires tests.
  test do
    assert_match "0.0.1", shell_output("#{bin}/quasar -V", 2)
  end
end