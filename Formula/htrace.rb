class Htrace < Formula
    desc "My simple Swiss Army knife for http/https troubleshooting and profiling."
    homepage "https://github.com/trimstray/htrace.sh"
    url "https://github.com/trimstray/htrace.sh/archive/v1.1.5.tar.gz"
    sha256 "66790df9d966e3c219f86578897c024e6607f712915281fe769ca4e0db8170af"
    version "1.1.5"

    depends_on "docker"

    def install

      system "build/build.sh"
    end

end
