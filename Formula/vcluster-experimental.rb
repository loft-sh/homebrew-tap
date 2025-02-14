# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VclusterExperimental < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.23.0-rc.1"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.23.0-rc.1/vcluster-darwin-amd64"
      sha256 "b845ff9f8c2d1718348986005fb9e28f50843a88671fc5fa80d90ad7b07d11eb"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.23.0-rc.1/vcluster-darwin-arm64"
      sha256 "b6cef1b63bba8b8e0e2d88aa1e24f9bc144cfa47a038eabbeec687443c0bd672"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.23.0-rc.1/vcluster-linux-amd64"
        sha256 "8ecc5fb2b8c1f039bd0509b19b8f875b42fefa07b6da241c8d5b6b6507149979"

        def install
          bin.install "vcluster-linux-amd64" => "vcluster"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.23.0-rc.1/vcluster-linux-arm"
        sha256 "829721eec84c57b4d6729f228235dde7b6a79512a7bddc5c2d9b63404c5340aa"

        def install
          bin.install "vcluster-linux-arm" => "vcluster"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.23.0-rc.1/vcluster-linux-arm64"
        sha256 "28e3dcf6706ebc8e561a9e6eedbf0f8aa760a5a17397c1b59336d636b7dbcd03"

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
