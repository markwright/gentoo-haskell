# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Simple, layout-based value language similar to YAML or JSON"
HOMEPAGE="https://github.com/glguy/config-value"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/text-1.2.0.4:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/alex-3.2.4
	>=dev-haskell/cabal-2.2
	>=dev-haskell/happy-1.19
"

src_prepare() {
	default

	cabal_chdeps \
		'base       >= 4.8     && < 4.14' 'base       >= 4.8' \
		'happy:happy ^>= 1.19.12' 'happy:happy >= 1.19.12' \
		'alex:alex   ^>= 3.2.4' 'alex:alex   >= 3.2.4'
}
