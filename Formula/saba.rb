# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saba < Formula
  desc "Declarative development framework saba"
  homepage "https://github.com/asweed888/saba"
  version "0.0.2"

  on_macos do
    url "https://github.com/asweed888/saba/releases/download/v0.0.2/saba_darwin_all.tar.gz"
    sha256 "532d55c583cefeb895633ec66065d809e2dc9715a20a9537368715ee7b84561e"

    def install
      bin.install "saba"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asweed888/saba/releases/download/v0.0.2/saba_linux_x86_64.tar.gz"
      sha256 "b9c72d8d4c616d1660a1c3a8bc2ec19a6f2ee4d6cfad7e6c63a9bca998c931c2"

      def install
        bin.install "saba"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/saba/releases/download/v0.0.2/saba_linux_armv6.tar.gz"
      sha256 "cc758cfd9d96718cf9073998fa8d86c23848252956d64f28793dff38f1b1f930"

      def install
        bin.install "saba"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/saba/releases/download/v0.0.2/saba_linux_arm64.tar.gz"
      sha256 "ed54e16d213d943affe0981f316417d627d34963570e525ec46a114e453eeb7f"

      def install
        bin.install "saba"
      end
    end
  end

  test do
    system "#{bin}/saba help"
  end
end
