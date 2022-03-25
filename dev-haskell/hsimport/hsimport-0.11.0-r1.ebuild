# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
CABAL_HACKAGE_REVISION="3"
inherit haskell-cabal

CABAL_FILE="${S}/${PN}.cabal"
CABAL_DISTFILE="${P}-rev${CABAL_HACKAGE_REVISION}.cabal"

DESCRIPTION="Extend the import list of a Haskell source file"
HOMEPAGE="https://hackage.haskell.org/package/hsimport"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/${CABAL_HACKAGE_REVISION}.cabal
		-> ${CABAL_DISTFILE}"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/attoparsec-0.10.4.0:=[profile?]
	>=dev-haskell/cmdargs-0.10.5:=[profile?] <dev-haskell/cmdargs-0.11:=[profile?]
	>=dev-haskell/dyre-0.8:=[profile?] <dev-haskell/dyre-0.9:=[profile?]
	>=dev-haskell/haskell-src-exts-1.18.0:=[profile?] <dev-haskell/haskell-src-exts-1.24:=[profile?]
	>=dev-haskell/ilist-0.1:=[profile?] <dev-haskell/ilist-0.5:=[profile?]
	>=dev-haskell/microlens-0.4:=[profile?] <dev-haskell/microlens-0.5:=[profile?]
	>=dev-haskell/split-0.2.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/tasty-0.9.0.1
		>=dev-haskell/tasty-golden-2.2.0.1 <dev-haskell/tasty-golden-2.4
		>=dev-haskell/utf8-string-1.0.1.1 <dev-haskell/utf8-string-1.1 )
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
		'tasty >=0.9.0.1 && <1.3' 'tasty >=0.9.0.1' \
		'attoparsec >=0.10.4.0 && <0.14' 'attoparsec >=0.10.4.0'
}
