# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VclusterExperimental < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.17.0-alpha.1"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.17.0-alpha.1/vcluster-darwin-amd64"
      sha256 "c6bf362bbfb78ce98ad5d3b39390966d3f3f406f55e942fc87b03699a19d428b"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.17.0-alpha.1/vcluster-darwin-arm64"
      sha256 "c192f4f14bcb7c66d8b5e2c5fe7cfc8964d81a381da64b894881b677952c0f6b"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.17.0-alpha.1/vcluster-linux-amd64"
      sha256 "8acbb7fc136accdcad9047b9cce8e38296576f52d99b56bc31d23ac135639c01"

      def install
        bin.install "vcluster-linux-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.17.0-alpha.1/vcluster-linux-arm64"
      sha256 "517c83ac37e7846a430f4439752b4fbdce5ca3459a91765ca56f4a8bfe422879"

      def install
        bin.install "vcluster-linux-arm64" => "vcluster"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.17.0-alpha.1/vcluster-linux-arm"
      sha256 "d96ebadd193cf6294554eecac918451e8cb3fd2eb3f1dd1a61d62d80fd07ce5d"

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
