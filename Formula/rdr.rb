class Rdr < Formula
  desc "CLI for calling Core Lightning Commando RPCs over lnsocket"
  homepage "https://github.com/nepet/cln-rdr"
  url "https://github.com/nepet/cln-rdr/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "9c8ba88d9173897b0a2b708ff595ea905d29ae398744ad1dcac24761913009db"
  license "MIT"

  bottle do
    root_url "https://github.com/nepet/homebrew-tap/releases/download/rdr-0.1.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "b7cbf2446ac0e55e681fc11f5997b205cb88306bcb19d893306d62baff6c731e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4b5e18b27d972cdb32e20f676c93aa403d8392fd6e67d66ab4a6cca066f0804b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    output = shell_output("#{bin}/rdr --help")
    assert_match "CLN-RADAR", output
  end
end
