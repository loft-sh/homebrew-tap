# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LoftExperimental < Formula
  desc "Namespace & Virtual Cluster Manager for Kubernetes - Lightweight Virtual Clusters, Self-Service Provisioning for Engineers and 70% Cost Savings with Sleep Mode"
  homepage "https://loft.sh"
  version "3.3.0-beta.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/loft-sh/loft/releases/download/v3.3.0-beta.3/loft-darwin-arm64"
      sha256 "1dabd9dfefb138052f4e529ef20ab608bbbacfd5b3bbbfe0825dda966d1e963a"

      def install
        bin.install "loft-darwin-arm64" => "loft"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.3.0-beta.3/loft-darwin-amd64"
      sha256 "6356bd40ff21353e330619423abca8082a5fa3f75b32bd941cc86e668f4a0028"

      def install
        bin.install "loft-darwin-amd64" => "loft"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/loft-sh/loft/releases/download/v3.3.0-beta.3/loft-linux-amd64"
      sha256 "f905810fda4387646e0054df4286a0bede79f3c38c4031574b8fb94161cfbe89"

      def install
        bin.install "loft-linux-amd64" => "loft"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.3.0-beta.3/loft-linux-arm64"
      sha256 "611acaac26104ebe19e76ac83e9b5c1e25955d4dd458662312390fbec24013ee"

      def install
        bin.install "loft-linux-arm64" => "loft"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/loft-sh/loft/releases/download/v3.3.0-beta.3/loft-linux-arm"
      sha256 "0f131bce4d1544d545a9a7a272d6cd8fe22081289d0d0ab88f786d704a092776"

      def install
        bin.install "loft-linux-arm" => "loft"
      end
    end
  end

  test do
    help_output = "Loft CLI - www.loft.sh"
    assert_match help_output, shell_output("#{bin}/loft --help")
  end
end
