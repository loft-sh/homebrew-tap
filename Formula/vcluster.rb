# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vcluster < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.17.0"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.17.0/vcluster-darwin-arm64"
      sha256 "d38ac917b38fbc45fc2f7b5264ac07e663d0e991e21cc8d538fa5c5b6342e445"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.17.0/vcluster-darwin-amd64"
      sha256 "c8be42c142ec35e94b609c9a0e4c7a9486538329f93ea3faafacf246d9a8a9b5"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.17.0/vcluster-linux-arm64"
      sha256 "63e6aaad709cbb91c1ac92f073a60d3e59604f7bb6fd3081d0c643b56fcacbf5"

      def install
        bin.install "vcluster-linux-arm64" => "vcluster"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.17.0/vcluster-linux-arm"
      sha256 "6a24dc5b8831496e0e6ec33e48618bceae7c1ba37a461fb49d8fb4815d288a97"

      def install
        bin.install "vcluster-linux-arm" => "vcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.17.0/vcluster-linux-amd64"
      sha256 "9913a72d203951976cb9f3f88e6816ba345f050cc894066862cff5376b5b3a38"

      def install
        bin.install "vcluster-linux-amd64" => "vcluster"
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
