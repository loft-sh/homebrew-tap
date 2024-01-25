# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VclusterExperimental < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.19.0-alpha.2"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.19.0-alpha.2/vcluster-darwin-amd64"
      sha256 "8ca0433f061a77b71a0286ef52e56c7340524e877ca6b57d26ff274e06bddbbd"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.19.0-alpha.2/vcluster-darwin-arm64"
      sha256 "c5c447aa54f613b36c5931755c5de6ac88623019b704038dcb66ced90868611f"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.19.0-alpha.2/vcluster-linux-amd64"
      sha256 "6770fd988467af50f2233c615e7f8fcef076d2a56b707c627e5a3a2c5b9321b4"

      def install
        bin.install "vcluster-linux-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.19.0-alpha.2/vcluster-linux-arm64"
      sha256 "e9d543c2f0463da96beda46be6e99cdd0dddd0ced1276ce6a0ffd9f0d5c3d07a"

      def install
        bin.install "vcluster-linux-arm64" => "vcluster"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.19.0-alpha.2/vcluster-linux-arm"
      sha256 "4784c47dd01044cb00137db46883aebfc69857b2182d726a1913740eeb6c016e"

      def install
        bin.install "vcluster-linux-arm" => "vcluster"
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
