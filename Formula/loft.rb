# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Loft < Formula
  desc "Namespace & Virtual Cluster Manager for Kubernetes - Lightweight Virtual Clusters, Self-Service Provisioning for Engineers and 70% Cost Savings with Sleep Mode"
  homepage "https://loft.sh"
  version "3.4.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.6/loft-darwin-amd64"
      sha256 "631cb989fa676bf321788b16687eaba960e6f77f53609b65651bda0495665cb6"

      def install
        bin.install "loft-darwin-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.6/loft-darwin-arm64"
      sha256 "e636cea17d7ce22771f0bba8d38ed47d4f29fac8e64003f031c2ef5cec7a5451"

      def install
        bin.install "loft-darwin-arm64" => "loft"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.6/loft-linux-amd64"
      sha256 "82ebf309ee6279f3148bc5c664380ae546b1ebb919badb6d1e71d8d1c964f1c8"

      def install
        bin.install "loft-linux-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.6/loft-linux-arm64"
      sha256 "5108e64614b61ddc4fe9682d4b5d05788f9d80d8416a4a8d8254640bb6980d96"

      def install
        bin.install "loft-linux-arm64" => "loft"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.6/loft-linux-arm"
      sha256 "9c249836ed5e9a53306f3c698ecf13af8c1e99f6577f3fa383a3fb7a2bb516c1"

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
