# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="The Wadler/Leijen Pretty Printer for colored ANSI terminal output"
HOMEPAGE="https://github.com/ekmett/ansi-wl-pprint"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="example"

RDEPEND=">=dev-haskell/ansi-terminal-0.9.1:=[profile?] <dev-haskell/ansi-terminal-0.12:=[profile?]
	>=dev-haskell/semigroups-0.18.5:=[profile?] <dev-haskell/semigroups-0.20:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag example example)
}

src_prepare() {
	default

	cabal_chdeps \
		'ansi-terminal >= 0.9.1 && < 0.10' 'ansi-terminal >= 0.9.1'
}
