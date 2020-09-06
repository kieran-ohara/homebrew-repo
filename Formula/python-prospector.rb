class PythonProspector < Formula
  desc "Prospector"
  homepage "http://prospector.readthedocs.io"
  version "1.3.0"
  url "https://files.pythonhosted.org/packages/2a/40/50c09be18befe62e8eb20da627b7a94271145d218c2376b4fd81bd2ee41a/prospector-1.3.0.tar.gz"
  sha256 "43e5e187c027336b0e4c4aa6a82d66d3b923b5ec5b51968126132e32f9d14a2f"
  depends_on "python"

  include Language::Python::Virtualenv

    resource "astroid" do
    url "https://files.pythonhosted.org/packages/c4/82/30e5f146863fb34b733bd57e82f96a6c61a6cb3692fc838e20d0091ee752/astroid-2.4.1.tar.gz"
    sha256 "4c17cea3e592c21b6e222f673868961bad77e1f985cb1694ed077475a89229c1"
  end

  resource "dodgy" do
    url "https://files.pythonhosted.org/packages/40/10/236a51323133319e108bc52594a66a39ec2f8fa9e4e47543936b5f4582d0/dodgy-0.2.1.tar.gz"
    sha256 "28323cbfc9352139fdd3d316fa17f325cc0e9ac74438cbba51d70f9b48f86c3a"
  end

  resource "flake8" do
    url "https://files.pythonhosted.org/packages/99/eb/cc2bbe9b242a79d2c5820911f21875a138aafa3dc2c3b9b34ba714f9fef9/flake8-3.8.3.tar.gz"
    sha256 "f04b9fcbac03b0a3e58c0ab3a0ecc462e023a9faf046d57794184028123aa208"
  end

  resource "flake8-polyfill" do
    url "https://files.pythonhosted.org/packages/e6/67/1c26634a770db5c442e361311bee73cb3a177adb2eb3f7af8953cfd9f553/flake8-polyfill-1.0.2.tar.gz"
    sha256 "e44b087597f6da52ec6393a709e7108b2905317d0c0b744cdca6208e670d8eda"
  end

  resource "importlib-metadata" do
    url "https://files.pythonhosted.org/packages/e2/ae/0b037584024c1557e537d25482c306cf6327b5a09b6c4b893579292c1c38/importlib_metadata-1.7.0.tar.gz"
    sha256 "90bb658cdbbf6d1735b6341ce708fc7024a3e14e99ffdc5783edea9f9b077f83"
  end

  resource "isort" do
    url "https://files.pythonhosted.org/packages/43/00/8705e8d0c05ba22f042634f791a61f4c678c32175763dcf2ca2a133f4739/isort-4.3.21.tar.gz"
    sha256 "54da7e92468955c4fceacd0c86bd0ec997b0e1ee80d97f67c35a78b719dccab1"
  end

  resource "lazy-object-proxy" do
    url "https://files.pythonhosted.org/packages/07/3f/a3d687f83c7d44970f70ff0400677746c8860b11f0c08f6b4e07205f0cdc/lazy-object-proxy-1.4.3.tar.gz"
    sha256 "f3900e8a5de27447acbf900b4750b0ddfd7ec1ea7fbaf11dfa911141bc522af0"
  end

  resource "mccabe" do
    url "https://files.pythonhosted.org/packages/06/18/fa675aa501e11d6d6ca0ae73a101b2f3571a565e0f7d38e062eec18a91ee/mccabe-0.6.1.tar.gz"
    sha256 "dd8d182285a0fe56bace7f45b5e7d1a6ebcbf524e8f3bd87eb0f125271b8831f"
  end

  resource "pep8-naming" do
    url "https://files.pythonhosted.org/packages/06/af/1e182d83519eb3fca41befaa2b671f1dcb4c4280e830aa0908c038b1de67/pep8-naming-0.10.0.tar.gz"
    sha256 "f3b4a5f9dd72b991bf7d8e2a341d2e1aa3a884a769b5aaac4f56825c1763bf3a"
  end

  resource "prospector" do
    url "https://files.pythonhosted.org/packages/2a/40/50c09be18befe62e8eb20da627b7a94271145d218c2376b4fd81bd2ee41a/prospector-1.3.0.tar.gz"
    sha256 "43e5e187c027336b0e4c4aa6a82d66d3b923b5ec5b51968126132e32f9d14a2f"
  end

  resource "pycodestyle" do
    url "https://files.pythonhosted.org/packages/bb/82/0df047a5347d607be504ad5faa255caa7919562962b934f9372b157e8a70/pycodestyle-2.6.0.tar.gz"
    sha256 "c58a7d2815e0e8d7972bf1803331fb0152f867bd89adf8a01dfd55085434192e"
  end

  resource "pydocstyle" do
    url "https://files.pythonhosted.org/packages/a9/77/1d835e40656d361bf8bd0add08d2c39dc257fb66ef8e29fe357c33826d5f/pydocstyle-5.1.1.tar.gz"
    sha256 "19b86fa8617ed916776a11cd8bc0197e5b9856d5433b777f51a3defe13075325"
  end

  resource "pyflakes" do
    url "https://files.pythonhosted.org/packages/f1/e2/e02fc89959619590eec0c35f366902535ade2728479fc3082c8af8840013/pyflakes-2.2.0.tar.gz"
    sha256 "35b2d75ee967ea93b55750aa9edbbf72813e06a66ba54438df2cfac9e3c27fc8"
  end

  resource "pylint" do
    url "https://files.pythonhosted.org/packages/b4/2d/c209a539c32e2d9c7396e69bab95ad4332b73cdc360bbc89495d7e49d332/pylint-2.5.2.tar.gz"
    sha256 "b95e31850f3af163c2283ed40432f053acbc8fc6eba6a069cb518d9dbf71848c"
  end

  resource "pylint-celery" do
    url "https://files.pythonhosted.org/packages/d7/11/7241fec486839a853cee783e3a00950d46ee1e3e993884341b1d4208a287/pylint-celery-0.3.tar.gz"
    sha256 "41e32094e7408d15c044178ea828dd524beedbdbe6f83f712c5e35bde1de4beb"
  end

  resource "pylint-django" do
    url "https://files.pythonhosted.org/packages/ea/9f/df40f02877c9a108c1ffa2a9fdaad4f7cd0c04f3fc93aef59d1dd9e9d512/pylint-django-2.0.15.tar.gz"
    sha256 "06a64331c498a3f049ba669dc0c174b92209e164198d43e589b1096ee616d5f8"
  end

  resource "pylint-flask" do
    url "https://files.pythonhosted.org/packages/0d/ec/e8c5742985bab80b2fcd0ab429cf6804779d8cfd15264fdad933057d1380/pylint-flask-0.6.tar.gz"
    sha256 "f4d97de2216bf7bfce07c9c08b166e978fe9f2725de2a50a9845a97de7e31517"
  end

  resource "pylint-plugin-utils" do
    url "https://files.pythonhosted.org/packages/5c/94/2f1a7a2468c42be1a57520e0a85953c5cef5f0672c5081c5e66f8d4a7d86/pylint-plugin-utils-0.6.tar.gz"
    sha256 "57625dcca20140f43731311cd8fd879318bf45a8b0fd17020717a8781714a25a"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/64/c2/b80047c7ac2478f9501676c988a5411ed5572f35d1beff9cae07d321512c/PyYAML-5.3.1.tar.gz"
    sha256 "b8eac752c5e14d3eca0e6dd9199cd627518cb5ec06add0de9d32baeee6fe645d"
  end

  resource "requirements-detector" do
    url "https://files.pythonhosted.org/packages/df/80/b7434a84b37ccd604d59d8e50a938557a6060b1259306048967a3dcecc78/requirements-detector-0.7.tar.gz"
    sha256 "0d1e13e61ed243f9c3c86e6cbb19980bcb3a0e0619cde2ec1f3af70fdbee6f7b"
  end

  resource "setoptconf" do
    url "https://files.pythonhosted.org/packages/6b/5a/9186be8db0804d808a5a82a9b7e47e6260832a5e5b5ec531a1de9dd49076/setoptconf-0.2.0.tar.gz"
    sha256 "5b0b5d8e0077713f5d5152d4f63be6f048d9a1bb66be15d089a11c898c3cf49c"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/6b/34/415834bfdafca3c5f451532e8a8d9ba89a21c9743a0c59fbd0205c7f9426/six-1.15.0.tar.gz"
    sha256 "30639c035cdb23534cd4aa2dd52c3bf48f06e5f4a941509c8bafd8ce11080259"
  end

  resource "snowballstemmer" do
    url "https://files.pythonhosted.org/packages/21/1b/6b8bbee253195c61aeaa61181bb41d646363bdaa691d0b94b304d4901193/snowballstemmer-2.0.0.tar.gz"
    sha256 "df3bac3df4c2c01363f3dd2cfa78cce2840a79b9f1c2d2de9ce8d31683992f52"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/da/24/84d5c108e818ca294efe7c1ce237b42118643ce58a14d2462b3b2e3800d5/toml-0.10.1.tar.gz"
    sha256 "926b612be1e5ce0634a2ca03470f95169cf16f939018233a670519cb4ac58b0f"
  end

  resource "typed-ast" do
    url "https://files.pythonhosted.org/packages/18/09/b6a6b14bb8c5ec4a24fe0cf0160aa0b784fd55a6fd7f8da602197c5c461e/typed_ast-1.4.1.tar.gz"
    sha256 "8c8aaad94455178e3187ab22c8b01a3837f8ee50e09cf31f1ba129eb293ec30b"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/82/f7/e43cefbe88c5fd371f4cf0cf5eb3feccd07515af9fd6cf7dbf1d1793a797/wrapt-1.12.1.tar.gz"
    sha256 "b62ffa81fb85f4332a4f609cab4ac40709470da05643a082ec1eb88e6d9b97d7"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/ce/8c/2c5f7dc1b418f659d36c04dec9446612fc7b45c8095cc7369dd772513055/zipp-3.1.0.tar.gz"
    sha256 "c599e4d75c98f6798c509911d08a22e6c021d074469042177c8c86fb92eefd96"
  end


  def install
    virtualenv_install_with_resources
    bin.install_symlink "#{libexec}/bin/prospector"
  end

end
