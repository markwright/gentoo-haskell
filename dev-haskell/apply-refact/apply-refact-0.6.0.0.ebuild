# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Perform refactorings specified by the refact library"
HOMEPAGE="http://hackage.haskell.org/package/apply-refact"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/filemanip:=[profile?]
	>=dev-haskell/ghc-exactprint-0.5.7.0:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/optparse-applicative-0.13:=[profile?]
	>=dev-haskell/refact-0.2:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/unix-compat:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	>=dev-lang/ghc-8.6.0:=[profile?] <dev-lang/ghc-8.8:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/silently
		dev-haskell/tasty
		dev-haskell/tasty-expected-failure
		dev-haskell/tasty-golden )
"
