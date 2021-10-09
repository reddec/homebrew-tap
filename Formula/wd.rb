# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wd < Formula
  desc "Yet another webhook daemon"
  homepage "https://github.com/reddec/wd"
  version "0.0.8"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/reddec/wd/releases/download/v0.0.8/wd_0.0.8_darwin_amd64.tar.gz"
      sha256 "82a803b0d521e1ee675a322eb7708ee8c4d0a4c79b41b2b73a5a5ba80700b908"
    end
    if Hardware::CPU.arm?
      url "https://github.com/reddec/wd/releases/download/v0.0.8/wd_0.0.8_darwin_arm64.tar.gz"
      sha256 "dd89db4aa531b1758ea95e0bf08d40838c6720fa244c0b0e4b6c8c7109d4a586"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/reddec/wd/releases/download/v0.0.8/wd_0.0.8_linux_armv6.tar.gz"
      sha256 "07690b24b82103ef401a4b6b96d60f0caad5a6d2f360f2167f216991fbe16fe5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/reddec/wd/releases/download/v0.0.8/wd_0.0.8_linux_amd64.tar.gz"
      sha256 "f624a107a1db3c03c9c3bd5951c33c62ffbacc0b8be483c635cb1b41103e701f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/reddec/wd/releases/download/v0.0.8/wd_0.0.8_linux_arm64.tar.gz"
      sha256 "49b9e8947265b5c44decfdb98b9291aa1d6faf085efbd2bd4977a1a9f56d7d17"
    end
  end

  def install
    bin.install "wd"
  end

  test do
    system "#{bin}/wd --help"
  end
end
