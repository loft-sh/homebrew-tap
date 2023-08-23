# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vcluster < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.15.6"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.15.6/vcluster-darwin-arm64"
      sha256 "ca4fcb7bda2d844d46ad624f0a591c2643693e080b86738253110127cf8301f0"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
        generate_completions_from_executable(bin/"vcluster", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.15.6/vcluster-darwin-amd64"
      sha256 "8cb9ef9a3357dd9b67f8d989667008c23c676c1e786dffb108c3b9df2dfbf1a7"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
        generate_completions_from_executable(bin/"vcluster", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.15.6/vcluster-linux-amd64"
      sha256 "bd5fec6a4c6ace116cece7d847ebc4f44a7808a37db1915a218613275e3ecc24"

      def install
        bin.install "vcluster-linux-amd64" => "vcluster"
        generate_completions_from_executable(bin/"vcluster", "completion")
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.15.6/vcluster-linux-arm"
      sha256 "1cfd0780991a28a43cbc1694070ce2581c1cad5edb16f2c2c3e66db140b7acb8"

      def install
        bin.install "vcluster-linux-arm" => "vcluster"
        generate_completions_from_executable(bin/"vcluster", "completion")
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.15.6/vcluster-linux-arm64"
      sha256 "e7851685d7c3e92c4c919899c106c4ef8656d7ad30f5198d30680ddf0e4c7abf"

      def install
        bin.install "vcluster-linux-arm64" => "vcluster"
        generate_completions_from_executable(bin/"vcluster", "completion")
      end
    end
  end

  test do
    help_output = "vcluster root command"
    assert_match help_output, shell_output("#{bin}/vcluster --help")
  end
end
