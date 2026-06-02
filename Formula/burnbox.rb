# typed: false
# frozen_string_literal: true

# Homebrew formula for burnbox — server-blind, one-time secret sharing.
# Prebuilt per-arch release binaries from github.com/kfet/burnbox.
class Burnbox < Formula
  desc "Server-blind, one-time secret sharing (burn-after-reading)"
  homepage "https://github.com/kfet/burnbox"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kfet/burnbox/releases/download/v0.1.1/burnbox-0.1.1-darwin-arm64.tar.gz"
      sha256 "446fe5c14de847647fcece8a5a6dc740a5cf2a60297b57e7818e7dbdf62d3605"
    end
    on_intel do
      url "https://github.com/kfet/burnbox/releases/download/v0.1.1/burnbox-0.1.1-darwin-amd64.tar.gz"
      sha256 "4ad3836fbee0246528c04d46898bb1526e50d2ebdd8dee794c9e5df23a51ea73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kfet/burnbox/releases/download/v0.1.1/burnbox-0.1.1-linux-arm64.tar.gz"
      sha256 "1b42a4ede56f188bf32f78e654ef70585a20fae8b2d66d33ceca9271116f89c3"
    end
    on_intel do
      url "https://github.com/kfet/burnbox/releases/download/v0.1.1/burnbox-0.1.1-linux-amd64.tar.gz"
      sha256 "f018a9ad52befdf18f71a714040b245233aa73225dc2d9b4546d46514d01b0df"
    end
  end

  def install
    bin.install "burnbox"
  end

  test do
    assert_match "burnbox", shell_output("#{bin}/burnbox version 2>&1")
  end
end
