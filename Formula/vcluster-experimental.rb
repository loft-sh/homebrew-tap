# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VclusterExperimental < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.16.0-beta.10"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.16.0-beta.10/vcluster-darwin-arm64"
      sha256 "21401a03ec5d4df72eb8634740e0f44df13da603be88bf9fbd37747fd7cd6712"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.16.0-beta.10/vcluster-darwin-amd64"
      sha256 "6760888c20493ddbbd9859495d32ef74185c4eca57eea36d011b95b54b4fde88"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.16.0-beta.10/vcluster-linux-amd64"
      sha256 "91ec09a56a40c47c0d2fae00ee6b8d6c571ca3d982b4de72c67725f07ecf97d6"

      def install
        bin.install "vcluster-linux-amd64" => "vcluster"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.16.0-beta.10/vcluster-linux-arm64"
      sha256 "5e2c6e53d732d3864dc60467bd3316ce98f24151a105a54c85c4a5385b2543f1"

      def install
        bin.install "vcluster-linux-arm64" => "vcluster"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/vcluster/releases/download/v0.16.0-beta.10/vcluster-linux-arm"
      sha256 "1faeb95177698686f1b7aa881578c2ed6fd217412f08db477f9e8e9ad6479d2b"

      def install
        bin.install "vcluster-linux-arm" => "vcluster"
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
