# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ClockifyCli < Formula
  desc "Helps to interact with Clockfy's API"
  homepage "https://github.com/lucassabreu/clockify-cli"
  version "0.38.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.38.0/clockify-cli_0.38.0_Darwin_x86_64.tar.gz"
      sha256 "fce15c63ee5a375f78416aac0f4030186cc0e685f489237ea704d1b79681c1c5"

      def install
        bin.install "clockify-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.38.0/clockify-cli_0.38.0_Darwin_arm64.tar.gz"
      sha256 "00e70d982601ba30210347ce99f309057682b8b6965ee1d0a96c6e9c8629c962"

      def install
        bin.install "clockify-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.38.0/clockify-cli_0.38.0_Linux_x86_64.tar.gz"
      sha256 "e0435a9aa688297e971beb6c18c78a9602c1d1a4f34f0d577140f16bf77003e1"

      def install
        bin.install "clockify-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.38.0/clockify-cli_0.38.0_Linux_arm64.tar.gz"
      sha256 "91e1b3c4857d9c4685417db9fae33b05033c009e555d0eb7f6554f2b45e2bcd0"

      def install
        bin.install "clockify-cli"
      end
    end
  end

  test do
    system "#{bin}/clockify-cli version"
  end
end
