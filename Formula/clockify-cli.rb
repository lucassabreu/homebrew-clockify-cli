# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ClockifyCli < Formula
  desc "Helps to interact with Clockfy's API"
  homepage "https://github.com/lucassabreu/clockify-cli"
  version "0.21.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.21.0/clockify-cli_0.21.0_Darwin_x86_64.tar.gz"
      sha256 "090fda00d384b6343de089cb69f94fd37c1744cd9d81dbf7e1ed92493e18cbed"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.21.0/clockify-cli_0.21.0_Darwin_arm64.tar.gz"
      sha256 "b8bacab53011c2d1406836275f5ab41bbbb536d28757c14c6d79247084b8a696"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.21.0/clockify-cli_0.21.0_Linux_x86_64.tar.gz"
      sha256 "84d770eb552b15e3d51c2bc7ecf5e2255261b26499f813235af02d43ce382268"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.21.0/clockify-cli_0.21.0_Linux_arm64.tar.gz"
      sha256 "9ff710a02e669ce9a6c2938d95b5581388a0a980dde35d7b6c6d49b79d4ee8ce"
    end
  end

  def install
    bin.install "clockify-cli"
  end

  test do
    system "#{bin}/clockify-cli version"
  end
end
