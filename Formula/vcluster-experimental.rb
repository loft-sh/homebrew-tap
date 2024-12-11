# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VclusterExperimental < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.19.9-beta.0"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    on_intel do
      url "https://github.com/loft-sh/vcluster/releases/download/v0.19.9-beta.0/vcluster-darwin-amd64"
      sha256 "e30f698c65fc70f14549ccf15b219a960e87419139dc8a9e2c0a6ad2f407cbac"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
    on_arm do
      url "https://github.com/loft-sh/vcluster/releases/download/v0.19.9-beta.0/vcluster-darwin-arm64"
      sha256 "46d4e750979367e87fb6e62ab25600f79d91a14ab38bef5bb2f56003126e96d5"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.19.9-beta.0/vcluster-linux-amd64"
        sha256 "1a509fda0d94b8ac675bd3ed473fa9bb821ca6a522375433c1cf1a0290c54e5f"

        def install
          bin.install "vcluster-linux-amd64" => "vcluster"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.19.9-beta.0/vcluster-linux-arm"
        sha256 "1712273d4cce9cb4d7ce5a1aa55d8242985e5510a76ea05ca042291cdbe550b2"

        def install
          bin.install "vcluster-linux-arm" => "vcluster"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.19.9-beta.0/vcluster-linux-arm64"
        sha256 "547acf8a342019f4d0ff79b4296fe0b52a347f0363512cbaeb3c645ea6f4081d"

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
