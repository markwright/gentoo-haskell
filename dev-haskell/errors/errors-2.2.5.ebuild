# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Simplified error-handling"
HOMEPAGE="http://hackage.haskell.org/package/errors"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/exceptions-0.6:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/safe-0.3.3:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	<dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-compat-0.4:=[profile?] <dev-haskell/transformers-compat-0.7:=[profile?]
	>=dev-haskell/unexceptionalio-0.3:=[profile?] <dev-haskell/unexceptionalio-0.4:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
