# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LoftExperimental < Formula
  desc "Namespace & Virtual Cluster Manager for Kubernetes - Lightweight Virtual Clusters, Self-Service Provisioning for Engineers and 70% Cost Savings with Sleep Mode"
  homepage "https://loft.sh"
  version "3.3.0-alpha.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/loft/releases/download/v3.3.0-alpha.15/loft-darwin-arm64"
      sha256 "8c61e9f5ef279f57d7649026080776fdc5a03f9390f5123863d4b54bc268642f"

      def install
        bin.install "loft-darwin-arm64" => "loft"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.3.0-alpha.15/loft-darwin-amd64"
      sha256 "b38ebd263a19c584e42319979cd768a2a0f32e55ffcec6a16060ef1963e02ed3"

      def install
        bin.install "loft-darwin-amd64" => "loft"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.3.0-alpha.15/loft-linux-amd64"
      sha256 "ed0bd7aa83bb0f0a568ec84c6d6305a1997587296695f3a3e5a9bc6f91810a8d"

      def install
        bin.install "loft-linux-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.3.0-alpha.15/loft-linux-arm"
      sha256 "9d98fdbe40e282524f479d44c9ed5a3a0840750e818e658cafebf4b5f40b1ab6"

      def install
        bin.install "loft-linux-arm" => "loft"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.3.0-alpha.15/loft-linux-arm64"
      sha256 "27bc0c0a1455422c8327fd021acbbdc456b851135fec27c5a5a649376944c860"

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
