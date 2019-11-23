# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="Imlib"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Haskell binding for Imlib 2"
HOMEPAGE="http://hackage.haskell.org/package/Imlib"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/x11:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		media-libs/imlib2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-0"

S="${WORKDIR}/${MY_P}"
