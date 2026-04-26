class Rdr < Formula
  desc "CLI for calling Core Lightning Commando RPCs over lnsocket"
  homepage "https://github.com/nepet/cln-rdr"
  url "https://github.com/nepet/cln-rdr/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "9c8ba88d9173897b0a2b708ff595ea905d29ae398744ad1dcac24761913009db"
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
