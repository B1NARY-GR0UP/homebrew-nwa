# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nwa < Formula
  desc "NWA - A More Powerful License Header Management Tool"
  homepage "https://github.com/B1NARY-GR0UP/nwa"
  version "0.7.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/B1NARY-GR0UP/nwa/releases/download/v0.7.3/nwa_Darwin_x86_64.tar.gz"
      sha256 "2049e9239f5263771df18e27406da613cad423c48e539ef25d22ad871771d9ea"

      def install
        bin.install "nwa"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/B1NARY-GR0UP/nwa/releases/download/v0.7.3/nwa_Darwin_arm64.tar.gz"
      sha256 "2d9911cf3203cf02eac15090c32a9c58e455c4b20ce8e13f1264a2170eb62c4b"

      def install
        bin.install "nwa"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/B1NARY-GR0UP/nwa/releases/download/v0.7.3/nwa_Linux_x86_64.tar.gz"
      sha256 "3041f79a701689f81da78ea2d8b27096becb5a5b5324739ecd92b2cc08654c12"
      def install
        bin.install "nwa"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/B1NARY-GR0UP/nwa/releases/download/v0.7.3/nwa_Linux_arm64.tar.gz"
      sha256 "a07f1fb16aa26b6308f506745a3a7ad7c7cdc6459548f7c96f4009239662b31d"
      def install
        bin.install "nwa"
      end
    end
  end

  test do
    system "#{bin}/nwa --version"
  end
end
