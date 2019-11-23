# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Test interactive Haskell examples"
HOMEPAGE="https://github.com/sol/doctest#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-haskell/ghc-paths-0.1.0.9:=[profile?]
	>=dev-haskell/syb-0.3:=[profile?]
	dev-haskell/transformers:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/base-compat-0.4.2
		>=dev-haskell/hspec-1.5.1
		dev-haskell/hunit
		>=dev-haskell/quickcheck-2.5
		dev-haskell/setenv
		>=dev-haskell/silently-1.2.4
		>=dev-haskell/stringbuilder-0.4 )
"
