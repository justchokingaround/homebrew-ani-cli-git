class AniCliGit < Formula
  desc "A cli to browse and watch anime. (development version)"
  homepage "https://github.com/pystardust/ani-cli"
  url "https://github.com/pystardust/ani-cli.git"
  version "4.2.5"
  head "https://github.com/pystardust/ani-cli.git"

  depends_on "curl"
  depends_on "ffmpeg"
  depends_on "fzf"
  # depends_on "homebrew/cask"
  depends_on "aria2" => :recommended
  depends_on "vlc" => :optional

  def install
    bin.install "ani-cli"
    man1.install "ani-cli.1"
  end

  test do
    assert_match "ani-cli version", shell_output("#{bin}/ani-cli -v")
  end
end
