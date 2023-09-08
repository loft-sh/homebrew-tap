# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VclusterExperimental < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.16.0-beta.3"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.16.0-beta.3/vcluster-experimental-darwin-amd64"
      sha256 "b74f97f80d33080b8874d3446d8a3b7256ad5a89648dff8e7f0943312f5c1a9e"

      def install
        bin.install "vcluster-experimental-darwin-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.16.0-beta.3/vcluster-experimental-darwin-arm64"
      sha256 "cacb2dd8a371c76c8a893ee24683a254cb47ae3e6eaecf923632cc09eb1f2ebd"

      def install
        bin.install "vcluster-experimental-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.16.0-beta.3/vcluster-experimental-linux-amd64"
      sha256 "b81224ae37e6291608318a120864f5373c0a29e05fe5dbe61140e91a3f682832"

      def install
        bin.install "vcluster-experimental-linux-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.16.0-beta.3/vcluster-experimental-linux-arm"
      sha256 "1f9d30b79764bff322a49a21106e2863bd1911ede04cdc113b8dd024ef4236d4"

      def install
        bin.install "vcluster-experimental-linux-arm" => "vcluster"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.16.0-beta.3/vcluster-experimental-linux-arm64"
      sha256 "a06ad3caee8a4a97bbeec5efc4f2fbf4984c686cfb8242891020090c48b670fa"

      def install
        bin.install "vcluster-experimental-linux-arm64" => "vcluster"
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
