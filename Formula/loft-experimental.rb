# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LoftExperimental < Formula
  desc "Namespace & Virtual Cluster Manager for Kubernetes - Lightweight Virtual Clusters, Self-Service Provisioning for Engineers and 70% Cost Savings with Sleep Mode"
  homepage "https://loft.sh"
  version "3.4.7-rc.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.7-rc.1/loft-darwin-amd64"
      sha256 "bca39d77bede0cfce20c9b9798e57f574e231f7e237175007c4399956afef82e"

      def install
        bin.install "loft-darwin-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.7-rc.1/loft-darwin-arm64"
      sha256 "087bda01808eb96a9ec85475b925e81eb2b33fdde9f87d002b1ca656a58d53fe"

      def install
        bin.install "loft-darwin-arm64" => "loft"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.7-rc.1/loft-linux-amd64"
      sha256 "11f4f2d44a5bef500b979c36ab3c346c3352cdd18135562c1cc60f7f86790c01"

      def install
        bin.install "loft-linux-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.7-rc.1/loft-linux-arm64"
      sha256 "07d8546724cd4d79a8f655c5ead91f735f27266e7520cd53015cfc16ab8f5cca"

      def install
        bin.install "loft-linux-arm64" => "loft"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.7-rc.1/loft-linux-arm"
      sha256 "d0ff8aad22fd388ac03c4c2bba4668a6917e25216f92d9764af80e55440ac816"

      def install
        bin.install "loft-linux-arm" => "loft"
      end
    end
  end

  test do
    help_output = "Loft CLI - www.loft.sh"
    assert_match help_output, shell_output("#{bin}/loft --help")
  end
end
