# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Martin Erwig's Functional Graph Library"
HOMEPAGE="http://hackage.haskell.org/package/fgl"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hspec-2.1
		>=dev-haskell/quickcheck-2.8 )
"

PATCHES=("${FILESDIR}"/${PN}-5.6.0.0-ghc-8.6.patch)

src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck >= 2.8 && < 2.10' 'QuickCheck >= 2.8' \
		'hspec >= 2.1 && < 2.5' 'hspec >= 2.1'
}
