# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VclusterExperimental < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.23.0-alpha.5"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.23.0-alpha.5/vcluster-darwin-amd64"
      sha256 "d9248e67b8ff9e475cb1fa9a1ac46a5c092acb652bda735bbfaef482528ab0fe"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.23.0-alpha.5/vcluster-darwin-arm64"
      sha256 "fc0a1c41a5659955dc342e245a720c9f058daa84c1e5da533d6732ae9b9b347d"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.23.0-alpha.5/vcluster-linux-amd64"
        sha256 "e00fa4f064a3a96efa6df1fad76c5bde3b3178dccd8d570eab08b779ce80a59a"

        def install
          bin.install "vcluster-linux-amd64" => "vcluster"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.23.0-alpha.5/vcluster-linux-arm"
        sha256 "e4353846f514fca89167e8cac4147e7d65403c82169118a0d60e7d0223b7e84c"

        def install
          bin.install "vcluster-linux-arm" => "vcluster"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.23.0-alpha.5/vcluster-linux-arm64"
        sha256 "c41c249aafebc0a7e7777d7558998da740d6ef288778be0d667fd3e27611cebf"

        def install
          bin.install "vcluster-linux-arm64" => "vcluster"
        end
      end
    end
  end

  conflicts_with "vcluster"
  conflicts_with "loft-sh/tap/vcluster"

  test do
    help_output = "vcluster root command"
    assert_match help_output, shell_output("#{bin}/vcluster --help")
  end
end
