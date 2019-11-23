# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs"
HOMEPAGE="https://github.com/MarcWeber/hasktags"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

RDEPEND=">=dev-haskell/json-0.5:=[profile?] <dev-haskell/json-0.10:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/hunit )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag debug debug)
}
