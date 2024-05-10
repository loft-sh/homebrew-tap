# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LoftExperimental < Formula
  desc "Namespace & Virtual Cluster Manager for Kubernetes - Lightweight Virtual Clusters, Self-Service Provisioning for Engineers and 70% Cost Savings with Sleep Mode"
  homepage "https://loft.sh"
  version "4.0.0-alpha.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/loft/releases/download/v4.0.0-alpha.3/loft-darwin-arm64"
      sha256 "df864387ab5d6ea93b7666ae6365e5d1c66f7e5173469dd35a902dbdebad718d"

      def install
        bin.install "loft-darwin-arm64" => "loft"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v4.0.0-alpha.3/loft-darwin-amd64"
      sha256 "6f92674c110c34a2bd6e81f8d6c4c3012f9aba029a938f69ece553f8ca3bfb63"

      def install
        bin.install "loft-darwin-amd64" => "loft"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v4.0.0-alpha.3/loft-linux-amd64"
      sha256 "f761cdcfb37fda9f1177b6e974f5d87005573a5caf97b89bcadc4167407a9950"

      def install
        bin.install "loft-linux-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v4.0.0-alpha.3/loft-linux-arm64"
      sha256 "a138d1484fab852b80a8c79ae54b28f1348937d0e4a32677ecd4f76798869fc6"

      def install
        bin.install "loft-linux-arm64" => "loft"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v4.0.0-alpha.3/loft-linux-arm"
      sha256 "35286e1faac7977ce0880ab0557e10c051b0048dab837f72520580b93a6d3a91"

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
