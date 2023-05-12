# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Bindings to the nanomsg library"
HOMEPAGE="https://github.com/ivarnymoen/nanomsg-haskell"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RESTRICT=test # fail tests on QC-2.12

RDEPEND=">=dev-lang/ghc-7.8.2:=
	dev-libs/nanomsg
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/quickcheck
		dev-haskell/test-framework
		dev-haskell/test-framework-quickcheck2
		dev-haskell/test-framework-th )
"
