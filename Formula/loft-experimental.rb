# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LoftExperimental < Formula
  desc "Namespace & Virtual Cluster Manager for Kubernetes - Lightweight Virtual Clusters, Self-Service Provisioning for Engineers and 70% Cost Savings with Sleep Mode"
  homepage "https://loft.sh"
  version "3.4.0-beta.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.0-beta.9/loft-darwin-amd64"
      sha256 "37103ae7487c8ba897eef2a535744ed0fad4a43cb2ad2bfd9203d1b178526fa8"

      def install
        bin.install "loft-darwin-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.0-beta.9/loft-darwin-arm64"
      sha256 "913b9cef8fc0844a8691afa9fce2fa054a57147d24b8a9f0f9872e2a730fec13"

      def install
        bin.install "loft-darwin-arm64" => "loft"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.0-beta.9/loft-linux-arm"
      sha256 "4dea15450bf7a94d351a94401a489bd7933c4e5cceae4f0cd8ac3d5db7309f03"

      def install
        bin.install "loft-linux-arm" => "loft"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.0-beta.9/loft-linux-amd64"
      sha256 "b6eda767854cf69a920d2baad29fa1587af225d3d71cc74bc7d4bd9d0a9d7db2"

      def install
        bin.install "loft-linux-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.0-beta.9/loft-linux-arm64"
      sha256 "8de5df60e3a0de27b87e6d5bab1a3f74f8399f71a1b1f31f0c5d63da6892030d"

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
