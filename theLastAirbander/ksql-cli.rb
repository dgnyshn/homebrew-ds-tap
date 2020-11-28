require "language/go"

# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DockerShell < Formula
  desc "A simple interactive prompt for ksql"
  homepage "https://github.com/theLastAirbander/ksql-cli"
  url "https://github.com/theLastAirbander/ksql-cli/archive/v.0.0.1.tar.gz"
  sha256 "2b22fe00755b876269c2d5d51ac4ee0c252e1a76289c55db7ded3b556746d309"
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
