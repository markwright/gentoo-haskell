# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Library for parsing GHC time and allocation profiling reports"
HOMEPAGE="https://github.com/maoe/ghc-prof"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="dump"

RDEPEND="<dev-haskell/attoparsec-0.14:=[profile?]
	<dev-haskell/scientific-0.4:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/attoparsec-0.10 <dev-haskell/attoparsec-0.14
		<dev-haskell/tasty-1.3
		>=dev-haskell/tasty-hunit-0.9.1 <dev-haskell/tasty-hunit-0.11
		dev-haskell/temporary )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag dump dump)
}
