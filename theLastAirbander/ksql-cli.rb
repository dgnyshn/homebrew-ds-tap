require "language/go"

# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class KsqlCli < Formula
  desc "A simple interactive prompt for ksql"
  homepage "https://github.com/theLastAirbander/ksql-cli"
  url "https://github.com/theLastAirbander/ksql-cli/archive/v.0.0.1.tar.gz"
  sha256 "ef9c229ac1fc0fcaaf5dc1be75f80f0fe74fbb7be0691a73bb0dd62a91acd405"
  head "https://github.com/theLastAirbander/ksql-cli"

  depends_on "go" => :build

  def install

    ENV["GOPATH"] = buildpath
    bin_path = buildpath/"src/github.com/theLastAirbander/ksql-cli"
    bin_path.install Dir["*"]

    cd bin_path do
      system "go", "build", "-o", bin/"ksql-cli", "."
    end
  end

  test do
    system "true"
  end
end
