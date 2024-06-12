# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LoftExperimental < Formula
  desc "Namespace & Virtual Cluster Manager for Kubernetes - Lightweight Virtual Clusters, Self-Service Provisioning for Engineers and 70% Cost Savings with Sleep Mode"
  homepage "https://loft.sh"
  version "3.4.7-rc.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.7-rc.1/loft-darwin-arm64"
      sha256 "66583105ecae558ec2133e882cf96ac760161ba208a060a1dca759171e81d6d9"

      def install
        bin.install "loft-darwin-arm64" => "loft"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.7-rc.1/loft-darwin-amd64"
      sha256 "1c682a053a797e332c491c8a28320b4727e1aaa44e60f57db26ad13056af0c29"

      def install
        bin.install "loft-darwin-amd64" => "loft"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.7-rc.1/loft-linux-arm64"
      sha256 "395aa84e61940343af0d3579d88bfe4b9cd746024946aa9cca0eaea17f6867ae"

      def install
        bin.install "loft-linux-arm64" => "loft"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.7-rc.1/loft-linux-amd64"
      sha256 "79d341543ea28b4cff49f44d4b908e5799653f953f2eb0e02a569a337bb12592"

      def install
        bin.install "loft-linux-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.7-rc.1/loft-linux-arm"
      sha256 "3327e26d978c9c17098cdc22f704d8b0e9f7059413fb92a0191ca5ed879c5435"

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
