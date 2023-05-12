# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
CABAL_HACKAGE_REVISION="1"
inherit haskell-cabal

CABAL_FILE="${S}/${PN}.cabal"
CABAL_DISTFILE="${P}-rev${CABAL_HACKAGE_REVISION}.cabal"

DESCRIPTION="Fast, high quality pseudo random number generation"
HOMEPAGE="https://github.com/bos/mwc-random"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/${CABAL_HACKAGE_REVISION}.cabal
		-> ${CABAL_DISTFILE}"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/math-functions-0.2.1.0:=[profile?]
	>=dev-haskell/primitive-0.6.2:=[profile?]
	>=dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/vector-0.7:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/doctest-0.15
		>=dev-haskell/quickcheck-2.2
		>=dev-haskell/tasty-1.3.1
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck
		>=dev-haskell/vector-0.12.1 )
"
BDEPEND="app-text/dos2unix"

src_prepare() {
	# pull revised cabal from upstream
	cp "${DISTDIR}/${CABAL_DISTFILE}" "${CABAL_FILE}" || die

	# Convert to unix line endings
	dos2unix "${CABAL_FILE}" || die

	# Apply patches *after* pulling the revised cabal
	default

	cabal_chdeps \
		'doctest    >=0.15 && <0.20' 'doctest >=0.15'
}
