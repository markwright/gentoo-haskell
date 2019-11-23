# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Structured logging solution (base package)"
HOMEPAGE="https://github.com/scrive/log"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.11.0.0:=[profile?]
	>=dev-haskell/aeson-pretty-0.8.2:=[profile?]
	>=dev-haskell/exceptions-0.6:=[profile?]
	>=dev-haskell/mmorph-1.0.9:=[profile?] <dev-haskell/mmorph-1.2:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?]
	>=dev-haskell/monad-time-0.2:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/semigroups:=[profile?]
	>=dev-haskell/stm-2.4:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"
