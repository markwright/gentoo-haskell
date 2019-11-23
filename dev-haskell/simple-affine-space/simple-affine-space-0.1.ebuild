# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A simple library for affine and vector spaces"
HOMEPAGE="http://www.haskell.org/haskellwiki/Yampa"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # test-suite haddock-coverage fails

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hlint-1.7
		  dev-haskell/regex-posix )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag test test-doc-coverage) \
		$(cabal_flag test test-hlint)
}
