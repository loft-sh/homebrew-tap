# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Loft < Formula
  desc "Namespace & Virtual Cluster Manager for Kubernetes - Lightweight Virtual Clusters, Self-Service Provisioning for Engineers and 70% Cost Savings with Sleep Mode"
  homepage "https://loft.sh"
  version "3.4.9"

  on_macos do
    on_intel do
      url "https://github.com/loft-sh/loft/releases/download/v3.4.9/loft-darwin-amd64"
      sha256 "6b904e920366931a72e7031fbb9f02192dbc6b3860640e49de81c72eecd925d0"

      def install
        bin.install "loft-darwin-amd64" => "loft"
      end
    end
    on_arm do
      url "https://github.com/loft-sh/loft/releases/download/v3.4.9/loft-darwin-arm64"
      sha256 "2ac164901e2ddb3cd2b14880cc8a263140d4f851302bb76607230c8d115db058"

      def install
        bin.install "loft-darwin-arm64" => "loft"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/loft/releases/download/v3.4.9/loft-linux-amd64"
        sha256 "16409ddf317e5803341342a1f720d8bc10fcb1c581c0311b5fe76c8a03f41709"

        def install
          bin.install "loft-linux-amd64" => "loft"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/loft/releases/download/v3.4.9/loft-linux-arm"
        sha256 "e64fbea61e92c6047f3df7e4b6174de96eaacb1913d458d0efe2c276ca171524"

        def install
          bin.install "loft-linux-arm" => "loft"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/loft/releases/download/v3.4.9/loft-linux-arm64"
        sha256 "3a9f3b309586b19beeb634f082a3c8139366909c1b6f5b7c66fc375f13710623"

        def install
          bin.install "loft-linux-arm64" => "loft"
        end
      end
    end
  end

  test do
    help_output = "Loft CLI - www.loft.sh"
    assert_match help_output, shell_output("#{bin}/loft --help")
  end
end
