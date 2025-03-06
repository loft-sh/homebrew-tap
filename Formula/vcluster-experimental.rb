# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VclusterExperimental < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.24.0-rc.2"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.24.0-rc.2/vcluster-darwin-amd64"
      sha256 "fefdb24d1009f4f036f9f52549083bbb08b3621ae3de216affce7ce339d72977"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.24.0-rc.2/vcluster-darwin-arm64"
      sha256 "3b2822666a6030393aca3c92744deb2e1c28fb2964dc1b58acb7833fb3f4b144"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.24.0-rc.2/vcluster-linux-amd64"
        sha256 "eaa4f2f73196c42f159ffa9baa9ffe6a442ab2cfc694165ffeb6dee2755622db"

        def install
          bin.install "vcluster-linux-amd64" => "vcluster"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.24.0-rc.2/vcluster-linux-arm64"
        sha256 "be72519a7ff6f988cda30b995705053e06a54d23b87adb70688775ff47b870a1"

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
