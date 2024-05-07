# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LoftExperimental < Formula
  desc "Namespace & Virtual Cluster Manager for Kubernetes - Lightweight Virtual Clusters, Self-Service Provisioning for Engineers and 70% Cost Savings with Sleep Mode"
  homepage "https://loft.sh"
  version "4.0.0-alpha.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v4.0.0-alpha.0/loft-darwin-amd64"
      sha256 "01f7a3c93b38ca5dfdab14f74d6c5878b52b732046fcf02d7e4cde9e9d8c51ef"

      def install
        bin.install "loft-darwin-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/loft/releases/download/v4.0.0-alpha.0/loft-darwin-arm64"
      sha256 "63bda1ca4ca401b79f0686fe2f5e12badb2695a1ef67fca81fa3dac51420e8d2"

      def install
        bin.install "loft-darwin-arm64" => "loft"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v4.0.0-alpha.0/loft-linux-amd64"
      sha256 "7d2c668fbbb6c16dbd9dfffe5d844e2d60fbed215e9bc3ecf749879ebcad215e"

      def install
        bin.install "loft-linux-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v4.0.0-alpha.0/loft-linux-arm64"
      sha256 "f53d794d0836253886bc0d4856bcfa8c5d7b717aab45d1eefbb56a4ab889a7f3"

      def install
        bin.install "loft-linux-arm64" => "loft"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v4.0.0-alpha.0/loft-linux-arm"
      sha256 "ddb7542980ce07fd639b61819faeeff4a518b1561ea8ae21cdcd3aa0e4aef941"

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
