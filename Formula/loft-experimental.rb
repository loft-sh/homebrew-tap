# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LoftExperimental < Formula
  desc "Namespace & Virtual Cluster Manager for Kubernetes - Lightweight Virtual Clusters, Self-Service Provisioning for Engineers and 70% Cost Savings with Sleep Mode"
  homepage "https://loft.sh"
  version "3.4.4-beta.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.4-beta.3/loft-darwin-amd64"
      sha256 "8fd144ded55ea9b45cea726702709d77daeb8dc77937cfa0d696665f8d773230"

      def install
        bin.install "loft-darwin-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.4-beta.3/loft-darwin-arm64"
      sha256 "836fc6fdafe0f73b744314d3569f880068d944679b3b6a9a7a20ed916ce88d4e"

      def install
        bin.install "loft-darwin-arm64" => "loft"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.4-beta.3/loft-linux-amd64"
      sha256 "878ebdb1f5e83631f22ac90817d0f810a04790b970bfe13122a4ad576cc75df8"

      def install
        bin.install "loft-linux-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.4-beta.3/loft-linux-arm"
      sha256 "7cfacf6b86b3c5fd4ea440b86ee91a4c6515a7eb7003fc968f270dcbef3cdeeb"

      def install
        bin.install "loft-linux-arm" => "loft"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.4.4-beta.3/loft-linux-arm64"
      sha256 "aa07a029e0a26af80ec5df02a227e1a27d21f7605bdc439f97b3fc204b1609c6"

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
