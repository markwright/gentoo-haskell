# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.5

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="JuicyPixels-scale-dct"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Scale JuicyPixels images with DCT"
HOMEPAGE="https://github.com/phadej/JuicyPixels-scale-dct#readme"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base-compat-0.6.0:=[profile?] <dev-haskell/base-compat-0.12:=[profile?]
	>=dev-haskell/carray-0.1.6.1:=[profile?] <dev-haskell/carray-0.2:=[profile?]
	>=dev-haskell/fft-0.1.8.1:=[profile?] <dev-haskell/fft-0.2:=[profile?]
	>=dev-haskell/juicypixels-3.2.5.3:=[profile?] <dev-haskell/juicypixels-3.4:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/juicypixels-3.2.8 )
"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	default

	cabal_chdeps \
		'base        >=4.7      && <4.12' 'base        >=4.7' \
		'base-compat >=0.6.0    && <0.11' 'base-compat >=0.6.0' \
		'JuicyPixels >=3.2.5.3  && <3.3' 'JuicyPixels >=3.2.5.3' \
		'time                  >=1.4.2 && <1.9' 'time                  >=1.4.2'
}
