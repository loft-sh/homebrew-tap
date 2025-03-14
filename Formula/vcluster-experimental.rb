# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VclusterExperimental < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.24.0-rc.7"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.24.0-rc.7/vcluster-darwin-amd64"
      sha256 "90c6488ffe86d91186e28d75e5bf1364049511eb0b110b6afeede6abac41133d"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.24.0-rc.7/vcluster-darwin-arm64"
      sha256 "3c0c9f02fd62484b6b207d7b02e301704f923009bd06bf6491c2fbf21fe74a8c"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.24.0-rc.7/vcluster-linux-amd64"
        sha256 "bc9c43d356d84cb4b2197276d808f3dcb703001458b3d3466c85d5de6ee5eac7"

        def install
          bin.install "vcluster-linux-amd64" => "vcluster"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.24.0-rc.7/vcluster-linux-arm64"
        sha256 "80e3d12a11977e3701d673ea90645cc79ccfdf2c57f69974762138351c6880d1"

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
