# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LoftExperimental < Formula
  desc "Namespace & Virtual Cluster Manager for Kubernetes - Lightweight Virtual Clusters, Self-Service Provisioning for Engineers and 70% Cost Savings with Sleep Mode"
  homepage "https://loft.sh"
  version "3.3.0-alpha.27"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/loft/releases/download/v3.3.0-alpha.27/loft-darwin-arm64"
      sha256 "35f2313e5106cc0a80246e43fbae2e41581c1ddba9f009caaa6a3d6575111da3"

      def install
        bin.install "loft-darwin-arm64" => "loft"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.3.0-alpha.27/loft-darwin-amd64"
      sha256 "d6c3f220358dcb70f19a9aaaca0bc004638ec8dffe3ecfebfec1da7a3be27e37"

      def install
        bin.install "loft-darwin-amd64" => "loft"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.3.0-alpha.27/loft-linux-amd64"
      sha256 "2058864f57cefe2a2981cb63fc3910c215ad19c42b5c18aebf151d043a879162"

      def install
        bin.install "loft-linux-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.3.0-alpha.27/loft-linux-arm64"
      sha256 "0781b29aace24d7bb9fe744ce392be29aaaaf2a7dfdce92468ce9de2ea7623ef"

      def install
        bin.install "loft-linux-arm64" => "loft"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.3.0-alpha.27/loft-linux-arm"
      sha256 "6eef5a484134bf45ed203ad5da657c781a0e8152361dcde92e5652f2efc4b58b"

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
