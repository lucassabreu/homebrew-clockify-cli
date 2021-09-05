# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ClockifyCli < Formula
  desc "Helps to interact with Clockfy's API"
  homepage "https://github.com/lucassabreu/clockify-cli"
  version "0.22.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.22.0/clockify-cli_0.22.0_Darwin_x86_64.tar.gz"
      sha256 "8429a4ac01cb6362f8f737e5bd2e43c2f36610dc87b2349937d597a878f45e37"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.22.0/clockify-cli_0.22.0_Darwin_arm64.tar.gz"
      sha256 "15579642b539de16c76d828f0572e57ac823d3fb084e89b2af74751269d078f1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.22.0/clockify-cli_0.22.0_Linux_x86_64.tar.gz"
      sha256 "64c5f1f160da3bf93d86207ad0a36645d910b8518f95e821e9d985f8bf4f9565"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.22.0/clockify-cli_0.22.0_Linux_arm64.tar.gz"
      sha256 "8d82c92d32effc2d7fde1083dd0c4c3480d88e2299821666917f9614219674d4"
    end
  end

  def install
    bin.install "clockify-cli"
  end

  test do
    system "#{bin}/clockify-cli version"
  end
end
