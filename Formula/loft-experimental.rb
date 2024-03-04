# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LoftExperimental < Formula
  desc "Namespace & Virtual Cluster Manager for Kubernetes - Lightweight Virtual Clusters, Self-Service Provisioning for Engineers and 70% Cost Savings with Sleep Mode"
  homepage "https://loft.sh"
  version "0.0.0-ci.5-do-not-use"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/loft/releases/download/v0.0.0-ci.5-do-not-use/loft-darwin-arm64"
      sha256 "8ad918dc2f1e648ee07ea58456c65d79e2722d97312aaedd985086d9d552bb5d"

      def install
        bin.install "loft-darwin-arm64" => "loft"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v0.0.0-ci.5-do-not-use/loft-darwin-amd64"
      sha256 "60d0cc08a0cd41b46eba61c1b3052df75933dba8de6e68c58564d4c7e6944c7b"

      def install
        bin.install "loft-darwin-amd64" => "loft"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v0.0.0-ci.5-do-not-use/loft-linux-amd64"
      sha256 "e4f46d9a95919893dc2dd6f146281ed1d8329ef021647076121eeb51713c8fdc"

      def install
        bin.install "loft-linux-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v0.0.0-ci.5-do-not-use/loft-linux-arm"
      sha256 "623b7146263f47564bb1fc3ccedc7fad77c1989af6f52ac13f033bb3f0a71a59"

      def install
        bin.install "loft-linux-arm" => "loft"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v0.0.0-ci.5-do-not-use/loft-linux-arm64"
      sha256 "3f9d6c63a109460991553f28c7e8f547a8b791820181552a9651442cf437f363"

      def install
        bin.install "loft-linux-arm64" => "loft"
      end
    end
  end

  test do
    help_output = "Loft CLI - www.loft.sh"
    assert_match help_output, shell_output("#{bin}/loft --help")
  end
end
