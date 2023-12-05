# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VclusterExperimental < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.18.0-beta.0"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.18.0-beta.0/vcluster-darwin-amd64"
      sha256 "29e601883e192e108983a84467d1b9646e07fe4fd175cbc208bd6dd6cfd5cfd4"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.18.0-beta.0/vcluster-darwin-arm64"
      sha256 "d74d480d63a7e9b7ca125a68aac060c3a79dc492cc96c5e4fc2d6635f03b0fcf"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.18.0-beta.0/vcluster-linux-arm64"
      sha256 "f358221fa0b0cfe488e62f2fc2f1478e91196739c4dc842b8ec542881d41a080"

      def install
        bin.install "vcluster-linux-arm64" => "vcluster"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.18.0-beta.0/vcluster-linux-arm"
      sha256 "474e2491013662abb49ff73e9cb6536a57eb6bfc557acdf659b42fa33c521a8a"

      def install
        bin.install "vcluster-linux-arm" => "vcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.18.0-beta.0/vcluster-linux-amd64"
      sha256 "e5d9f0f95798718b63b1cd3659eb6109433abc00f95bd153f612523a5de2b664"

      def install
        bin.install "vcluster-linux-amd64" => "vcluster"
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
