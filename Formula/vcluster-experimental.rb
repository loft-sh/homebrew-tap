# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VclusterExperimental < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.22.6-rc.1"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.22.6-rc.1/vcluster-darwin-amd64"
      sha256 "ed0910697ca07cc1708458c4cf0be24a7d50c8ded4f177603838c717a91ca574"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.22.6-rc.1/vcluster-darwin-arm64"
      sha256 "299be2a3b125adce2a449d91aefa0468b4b43d4ce45ad9f358c60ae0af87f764"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.22.6-rc.1/vcluster-linux-amd64"
        sha256 "a4b240aa9563e2a7b9f493890531b0b527d95ffaf5dd6185b4f258fd2e753211"

        def install
          bin.install "vcluster-linux-amd64" => "vcluster"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.22.6-rc.1/vcluster-linux-arm"
        sha256 "6a590e7295bf8cff1eda1a768021f20827acfac87749f9cc6d4a76c6cdbd1529"

        def install
          bin.install "vcluster-linux-arm" => "vcluster"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.22.6-rc.1/vcluster-linux-arm64"
        sha256 "fd3640de4cd77aa3676bb4208480584f151f8bdf37d85739fb63c46ef052ef7a"

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
