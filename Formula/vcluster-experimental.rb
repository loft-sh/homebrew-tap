# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VclusterExperimental < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.21.0-alpha.6"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    on_intel do
      url "https://github.com/loft-sh/vcluster/releases/download/v0.21.0-alpha.6/vcluster-darwin-amd64"
      sha256 "44a6a444f7d85d832ab9f9be1bbcf8ab9d3ebd0257cb64e1f9bd62f4b38137ae"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
    on_arm do
      url "https://github.com/loft-sh/vcluster/releases/download/v0.21.0-alpha.6/vcluster-darwin-arm64"
      sha256 "8b24a45ab9927eb8c8da0fc8008d8c91c4a6de033abec84f653cefe6aecb2852"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.21.0-alpha.6/vcluster-linux-amd64"
        sha256 "65cb7c5f7ed663c26b7c946d6eeb1d5e890797976ed0e8342c12f023cda7fc23"

        def install
          bin.install "vcluster-linux-amd64" => "vcluster"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.21.0-alpha.6/vcluster-linux-arm"
        sha256 "0f50a3f3e6d6146065008f19e71bb5e2f86680f64e5432666d24edac3381106e"

        def install
          bin.install "vcluster-linux-arm" => "vcluster"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.21.0-alpha.6/vcluster-linux-arm64"
        sha256 "92ec1d6e692f7770a675c71b38028d28f545a49093f73b33a3292ffad78bda03"

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
