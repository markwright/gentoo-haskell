# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="Gifcurry"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Create animated GIFs, overlaid with optional text, from video files"
HOMEPAGE="https://github.com/lettier/gifcurry"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cmdargs-0.10:=[profile?] <dev-haskell/cmdargs-0.11:=[profile?]
	>=dev-haskell/gtk3-0.14:=[profile?] <dev-haskell/gtk3-0.15:=[profile?]
	>=dev-haskell/temporary-1.2:=[profile?] <dev-haskell/temporary-1.3:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	default

	cabal_chdeps \
		'base >=4.7 && <=4.9.0.0' 'base >=4.7' \
		'process >=1.2 && <=1.4.2.0' 'process >=1.2' \
		'directory ==1.2.*' 'directory >=1.2' \
		'directory == 1.2.*' 'directory >= 1.2'
}
