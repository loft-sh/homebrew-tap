# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VclusterExperimental < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.20.0-beta.16"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    on_intel do
      url "https://github.com/loft-sh/vcluster/releases/download/v0.20.0-beta.16/vcluster-darwin-amd64"
      sha256 "30be68116c1ddd8f74c9b40ca06c31f170a22e62726bcb4b722f5ac29768de93"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
    on_arm do
      url "https://github.com/loft-sh/vcluster/releases/download/v0.20.0-beta.16/vcluster-darwin-arm64"
      sha256 "b4998e48c82a1e6ec68601d626a7bb592be77497977e793b93683cc830095003"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.20.0-beta.16/vcluster-linux-amd64"
        sha256 "919c83086360db6c9b77efa354b26312c64475ec4669642e771e11d9f352ce70"

        def install
          bin.install "vcluster-linux-amd64" => "vcluster"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.20.0-beta.16/vcluster-linux-arm"
        sha256 "3adc76f1be62690a3418ec051a33f0a0175d6ae9428abc67558ee63f527f2337"

        def install
          bin.install "vcluster-linux-arm" => "vcluster"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.20.0-beta.16/vcluster-linux-arm64"
        sha256 "7c947b8a4c90a27a47cb496d6ff853f4a731a107ea9f6890dafff07fd65958aa"

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
