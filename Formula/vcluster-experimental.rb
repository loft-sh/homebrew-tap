# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VclusterExperimental < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.21.6"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.21.6/vcluster-darwin-amd64"
      sha256 "df7c6b4d9a46cc105f01cf9872b7b5abee05265b621e270a78f5c0030519bb7a"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.21.6/vcluster-darwin-arm64"
      sha256 "42198ff8f2c8e247ddd5ae2a87e313b31aaf67d0cd3f85474bad50d25fa7718c"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.21.6/vcluster-linux-amd64"
        sha256 "d06d7e9cf074c400dd5429e9fab4bc593e6e2da239d6c0531713047082ba7973"

        def install
          bin.install "vcluster-linux-amd64" => "vcluster"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.21.6/vcluster-linux-arm"
        sha256 "8f54ee0980d13f171fc4eb79f44dc7cf7ddce09a130ac7d7ff3e89f772c867a3"

        def install
          bin.install "vcluster-linux-arm" => "vcluster"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.21.6/vcluster-linux-arm64"
        sha256 "d18c6444cc0114258931d29ffdac67372e996d3712e7d3aba438f50fd22e6128"

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
