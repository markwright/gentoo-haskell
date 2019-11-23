# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Lenses for These"
HOMEPAGE="https://github.com/isomorphism/these"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base-compat-0.10.5:=[profile?]
	>=dev-haskell/lens-4.17.1:=[profile?]
	>=dev-haskell/these-1:=[profile?] <dev-haskell/these-1.1:=[profile?]
	>=dev-lang/ghc-7.4.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.14.0
"

src_prepare() {
	default

	cabal_chdeps \
		'base >=4.5.1.0 && <4.13' 'base >=4.5.1.0' \
		'base-compat  >=0.10.5 && <0.11' 'base-compat  >=0.10.5' \
		'lens         >=4.17.1 && <4.18' 'lens         >=4.17.1'
}
