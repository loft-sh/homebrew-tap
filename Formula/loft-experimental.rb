# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LoftExperimental < Formula
  desc "Namespace & Virtual Cluster Manager for Kubernetes - Lightweight Virtual Clusters, Self-Service Provisioning for Engineers and 70% Cost Savings with Sleep Mode"
  homepage "https://loft.sh"
  version "3.4.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.5/loft-darwin-amd64"
      sha256 "2392c295c5b015cd178720bac4d30d31ef141cf47abf59962ce685e91cec094c"

      def install
        bin.install "loft-darwin-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.5/loft-darwin-arm64"
      sha256 "abe78cbe0ba711663951bb6e80d2da6f1cce83b415d7dfbacc09f9a623b7be3f"

      def install
        bin.install "loft-darwin-arm64" => "loft"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.5/loft-linux-amd64"
      sha256 "2ed65ee9b12ff683aeb5c29edba972902f98134aa0ee11a23879c612083d348a"

      def install
        bin.install "loft-linux-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.5/loft-linux-arm64"
      sha256 "2fe25e37b9aceb960ca791a8fa6ae4f1e40bffa2ff238b68b8dbf2d290aa3c2a"

      def install
        bin.install "loft-linux-arm64" => "loft"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.5/loft-linux-arm"
      sha256 "4e550a1d63639da9547df190a245dbcf01c922f4d925b6de4d1d330c7aeae632"

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
