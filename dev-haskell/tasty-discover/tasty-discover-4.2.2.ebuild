# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Test discovery for the tasty framework"
HOMEPAGE="https://github.com/haskell-works/tasty-discover"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"
IUSE="+executable"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

PATCHES=(
	"${FILESDIR}/${PN}-4.2.2-add-executable-flag.patch"
	"${FILESDIR}/${PN}-4.2.2-fix-depends.patch"
	"${FILESDIR}/${PN}-4.2.2-fix-test-imports.patch"
)

RDEPEND=">=dev-haskell/glob-0.8:=[profile?] <dev-haskell/glob-1.0:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/hedgehog
		dev-haskell/hspec
		dev-haskell/tasty
		dev-haskell/tasty-hedgehog
		dev-haskell/tasty-hspec
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck
		dev-haskell/tasty-smallcheck )
"

src_configure()	{
	haskell-cabal_src_configure \
		$(cabal_flag executable)
}

src_compile() {
	LD_LIBRARY_PATH="${S}/dist/build:${LD_LIBRARY_PATH}" haskell-cabal_src_compile
}
