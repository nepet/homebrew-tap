class Rdr < Formula
  desc "CLI for calling Core Lightning Commando RPCs over lnsocket"
  homepage "https://github.com/nepet/cln-rdr"
  url "https://github.com/nepet/cln-rdr/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8d8cd3702beeede02c055ac76dc441066986e51a2f8a8d2ba20b2e3a10fce559"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    output = shell_output("#{bin}/rdr --help")
    assert_match "CLN-RADAR", output
  end
end
