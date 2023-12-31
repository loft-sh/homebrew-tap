# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vcluster < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.18.1"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.18.1/vcluster-darwin-amd64"
      sha256 "b67bb6410a788103e2c7861efda5881659e0b8c8960717046a1efa802f079a92"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.18.1/vcluster-darwin-arm64"
      sha256 "152e740ba43146c0ba7e628da351e9b3ea42681786d4d77c956bc80404b5c063"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.18.1/vcluster-linux-amd64"
      sha256 "fc85905e7bd55494b896dac2b269bae60dd8ec2ba37528d7d4fa3e75e2ba0432"

      def install
        bin.install "vcluster-linux-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.18.1/vcluster-linux-arm"
      sha256 "1d6975fe7d6b41b9d9231a112b5ddf7fd4829c9f26c72d78d6096a556b4d9633"

      def install
        bin.install "vcluster-linux-arm" => "vcluster"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.18.1/vcluster-linux-arm64"
      sha256 "51bbe40dd9b8a8b1388146822e4279852bcba2422cc5f7e594f492586eb4101e"

      def install
        bin.install "vcluster-linux-arm64" => "vcluster"
      end
    end
  end

  conflicts_with "vcluster"
  conflicts_with "loft-sh/tap/vcluster-experimental"

  test do
    help_output = "vcluster root command"
    assert_match help_output, shell_output("#{bin}/vcluster --help")
  end
end
