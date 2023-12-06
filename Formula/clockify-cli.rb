# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ClockifyCli < Formula
  desc "Helps to interact with Clockfy's API"
  homepage "https://github.com/lucassabreu/clockify-cli"
  version "0.46.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.46.0/clockify-cli_Darwin_arm64.tar.gz"
      sha256 "d5efd8b339a4ed44e4a47ea8359b2c1820a3257dfe745aa135a676e20a0b7069"

      def install
        bin.install "clockify-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.46.0/clockify-cli_Darwin_x86_64.tar.gz"
      sha256 "2b764c48c62a29f5e88b556c246f3082bb73f3393bb21f5c70200147fe0566f9"

      def install
        bin.install "clockify-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.46.0/clockify-cli_Linux_arm64.tar.gz"
      sha256 "ad92dd2b17947d33967e4528a5d89ba872e4fb6ec8abc33466c5ad2f02717ada"

      def install
        bin.install "clockify-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.46.0/clockify-cli_Linux_x86_64.tar.gz"
      sha256 "ff1e0937dbef634d0045670e18da3ef72ce4337260d293b8232bdee725697878"

      def install
        bin.install "clockify-cli"
      end
    end
  end

  test do
    system "#{bin}/clockify-cli version"
  end
end
