# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="Annotations"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Constructing, analyzing and destructing annotated trees"
HOMEPAGE="http://hackage.haskell.org/package/Annotations"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

# https://ghc.haskell.org/trac/ghc/ticket/12234
RESTRICT=test # tests when build as -O1 blow up all RAM

RDEPEND=">=dev-haskell/mtl-1.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/multirec-0.4:=[profile?] <dev-haskell/multirec-0.8:=[profile?]
	>=dev-haskell/parsec-3.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

S="${WORKDIR}/${MY_P}"

PATCHES=(
	"${FILESDIR}"/${P}-ghc84.patch
)
