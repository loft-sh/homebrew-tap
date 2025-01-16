# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vcluster < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.22.2"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.22.2/vcluster-darwin-amd64"
      sha256 "1558ed8b9d426fd20142d3b1cd88142ac387c3c3f34aed4a31e765f8f8ff92a1"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.22.2/vcluster-darwin-arm64"
      sha256 "4a4ff1cf23b15638315f82b408a5932c924d06eb376c54da96ba34ad57201408"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.22.2/vcluster-linux-amd64"
        sha256 "538c98e5955afd63a33c16e7c055d43dfb105d6430fad264af2d982b0bd0571f"

        def install
          bin.install "vcluster-linux-amd64" => "vcluster"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.22.2/vcluster-linux-arm"
        sha256 "40431df0e111ad66936f177651d0021b414f755a2ea63021cf799de64fd0aba7"

        def install
          bin.install "vcluster-linux-arm" => "vcluster"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.22.2/vcluster-linux-arm64"
        sha256 "8774feb0091d2fed2b31a5be2dd314d72e5cde2380b640ae96ae888110cb78d0"

        def install
          bin.install "vcluster-linux-arm64" => "vcluster"
        end
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
