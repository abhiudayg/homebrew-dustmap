class Dustmap < Formula
  desc "Blazing-fast, transparent disk space analyzer and conservative cleaner for macOS (CLI)"
  homepage "https://github.com/abhiudayg/dustmap"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhiudayg/dustmap/releases/download/v0.1.0/dustmap-darwin-arm64"
      sha256 "355ea816e4220052866ae443b9cb6c82b55becc8b0b956d783de8ae0ee62d288"

      def install
        bin.install "dustmap-darwin-arm64" => "dustmap"
      end
    end
  end

  test do
    assert_match "dustmap", shell_output("#{bin}/dustmap --help")
  end
end
