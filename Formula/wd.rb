# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wd < Formula
  desc "Yet another webhook daemon"
  homepage "https://github.com/reddec/wd"
  version "0.0.10"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/reddec/wd/releases/download/v0.0.10/wd_0.0.10_darwin_amd64.tar.gz"
      sha256 "d3f7e98998cbc21fe428a33c021bda834db25a4355ca1ea5ed094436d5887ec1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/reddec/wd/releases/download/v0.0.10/wd_0.0.10_darwin_arm64.tar.gz"
      sha256 "aa9c8b031177ca0de9a5f4aed029a2e27836d6eb52d44b89bf5a2379a8672113"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/reddec/wd/releases/download/v0.0.10/wd_0.0.10_linux_amd64.tar.gz"
      sha256 "38f3da4312ff0dc6cf7289778ffcdece7f56e980ec13f4a6097619a947b0b529"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/reddec/wd/releases/download/v0.0.10/wd_0.0.10_linux_armv6.tar.gz"
      sha256 "a3af075f32b41748840bbdabc95c0e207ef21f3aa04ce8b87d5a324a2a0c46a4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/reddec/wd/releases/download/v0.0.10/wd_0.0.10_linux_arm64.tar.gz"
      sha256 "e7869e53d04b81169f0a70fac448e749e1cea9880c4fcd6d3c064eb637cd2830"
    end
  end

  def install
    bin.install "wd"
  end

  test do
    system "#{bin}/wd --help"
  end
end
