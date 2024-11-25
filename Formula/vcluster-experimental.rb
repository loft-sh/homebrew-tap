# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VclusterExperimental < Formula
  desc "Creates fully functional virtual k8s cluster inside host k8s cluster's namespace"
  homepage "https://www.vcluster.com"
  version "0.22.0-alpha.1"
  license "Apache-2.0"

  depends_on "helm"
  depends_on "kubernetes-cli"

  on_macos do
    on_intel do
      url "https://github.com/loft-sh/vcluster/releases/download/v0.22.0-alpha.1/vcluster-darwin-amd64"
      sha256 "627c42da2c1cadf22eac9d42b0db4789230a72007a0956df0a913c137a83a5d0"

      def install
        bin.install "vcluster-darwin-amd64" => "vcluster"
      end
    end
    on_arm do
      url "https://github.com/loft-sh/vcluster/releases/download/v0.22.0-alpha.1/vcluster-darwin-arm64"
      sha256 "47061efafa13cda919b4fa4600732963e55c506e440096bc5ec2bf26a3e0fd11"

      def install
        bin.install "vcluster-darwin-arm64" => "vcluster"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.22.0-alpha.1/vcluster-linux-amd64"
        sha256 "aaba03e23b9d5d4c528266782c26beb9580b60158d4c73d10f9dc098aaa6e7a4"

        def install
          bin.install "vcluster-linux-amd64" => "vcluster"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.22.0-alpha.1/vcluster-linux-arm"
        sha256 "44f058ff6a03ff6adbae9be340e395bde1f603a6a76a17de8396ea3e3edf14c5"

        def install
          bin.install "vcluster-linux-arm" => "vcluster"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/loft-sh/vcluster/releases/download/v0.22.0-alpha.1/vcluster-linux-arm64"
        sha256 "40fc8d39262274fcaa9f70bdc148a730f4ac1d9c41ba2ccc17c21c5a51cf9d71"

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
