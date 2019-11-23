# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999
#hackport: flags: +doctest,-minimal-deps,-bench-all,-bounds-check,-linktest

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Alternative prelude with batteries and no dependencies"
HOMEPAGE="https://github.com/haskell-foundation/foundation"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="experimental"

RESTRICT=test # fail to doctest

RDEPEND="~dev-haskell/basement-0.0.8:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/basement
		>=dev-haskell/doctest-0.9 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-bench-all \
		--flag=-bounds-check \
		--flag=doctest \
		$(cabal_flag experimental experimental) \
		--flag=-linktest \
		--flag=-minimal-deps
}
