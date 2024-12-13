# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VclusterExperimental < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.22.0-beta.0"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    on_intel do
      url "https://github.com/loft-sh/vcluster/releases/download/v0.22.0-beta.0/vcluster-darwin-amd64"
      sha256 "3bd646949cec37e4a96d7d105e706ff84b71d75567b0cda75f2846257652527d"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
    on_arm do
      url "https://github.com/loft-sh/vcluster/releases/download/v0.22.0-beta.0/vcluster-darwin-arm64"
      sha256 "9ccc4ed7de723e12333d9f0359d5b9f6b0d7a050f5b6b94276f46f506fbe6f1c"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.22.0-beta.0/vcluster-linux-amd64"
        sha256 "0c91fd7f678d5e8fee9e088b729de166abffd05199079618c745045242fe1042"

        def install
          bin.install "vcluster-linux-amd64" => "vcluster"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.22.0-beta.0/vcluster-linux-arm"
        sha256 "912dc75fb514700937a116434767e8f8d9d28e21bab1b9a9ce6c2a8215437c19"

        def install
          bin.install "vcluster-linux-arm" => "vcluster"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.22.0-beta.0/vcluster-linux-arm64"
        sha256 "70435607c8d1662cea37c3058da310244e8cb92fdeed7de85ec538e26a0c8394"

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
