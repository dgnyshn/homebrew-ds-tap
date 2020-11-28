# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class KsqlCli < Formula
  desc "A basic interactive prompt for ksql"
  homepage "https://github.com/theLastAirbander/ksql-cli"
  url "https://github.com/theLastAirbander/ksql-cli/archive/v.0.0.1.tar.gz"
  sha256 "2b22fe00755b876269c2d5d51ac4ee0c252e1a76289c55db7ded3b556746d309"

  def install
    bin.install "ksql-cli"
  end

  test do
    system "#{bin}/ksql-cli", "--help"
  end
end
