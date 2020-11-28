require "language/go"

# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class KsqlCli < Formula
  desc "A simple interactive prompt for ksql"
  homepage "https://github.com/theLastAirbander/ksql-cli"
  url "https://github.com/theLastAirbander/ksql-cli/archive/v1.0.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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
