# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Tunnelblick < Formula
    desc ""
    homepage ""
    url "https://github.com/Tunnelblick/Tunnelblick/releases/tag/v3.7.6a"
    sha256 "9c16a9069dd57ac5e5aafec1411df2f4baebddd6b5554299d6496625ed2ca393"
    # depends_on "cmake" => :build

    def install
        # ENV.deparallelize  # if your formula fails when building in parallel
        # Remove unrecognized options if warned by configure
        system "./configure", "--disable-debug",
            "--disable-dependency-tracking",
            "--disable-silent-rules",
            "--prefix=#{prefix}"
        # system "cmake", ".", *std_cmake_args
        system "make", "install" # if this fails, try separate make/make install steps
    end

    test do
        # `test do` will create, run in and delete a temporary directory.
        #
        # This test will fail and we won't accept that! For Homebrew/homebrew-core
        # this will need to be a test that verifies the functionality of the
        # software. Run the test with `brew test tunnelblick`. Options passed
        # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
        #
        # The installed folder is not in the path, so use the entire path to any
        # executables being tested: `system "#{bin}/program", "do", "something"`.
        system "false"
    end
end
