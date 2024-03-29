# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vcluster < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.19.5"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.19.5/vcluster-darwin-amd64"
      sha256 "93556b9a461ce3f2e2233cd6d606725196f15c31c1c41e748ed89abb0e5ba1d6"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.19.5/vcluster-darwin-arm64"
      sha256 "05f65380343c54f8a274380411f03d76060230386a576616161554c9f15d3511"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.19.5/vcluster-linux-arm"
      sha256 "b9deb6c34c99f32947e49cac91b9cc45d74b2d38ccc9b2482f57165a48829141"

      def install
        bin.install "vcluster-linux-arm" => "vcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.19.5/vcluster-linux-amd64"
      sha256 "1c64809f5b359612d1b6ffb6a9a17cda2d5b8bf2e021acb4c7feba408156a7b0"

      def install
        bin.install "vcluster-linux-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.19.5/vcluster-linux-arm64"
      sha256 "e2a0d383dccea27a893cf262b96cd30a2bbf69da65f40ddbbbf746e451083019"

      def install
        bin.install "vcluster-linux-arm64" => "vcluster"
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
