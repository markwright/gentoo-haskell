# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" #test-suite
inherit haskell-cabal

DESCRIPTION="Solver-agnostic symbolic values support for issuing queries"
HOMEPAGE="https://github.com/GaloisInc/what4"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="drealtestdisable solvertests stptestdisable"
RESTRICT="test" #need cvc5

RDEPEND="dev-haskell/async:=[profile?]
	>=dev-haskell/attoparsec-0.13:=[profile?]
	>=dev-haskell/bifunctors-5:=[profile?]
	>=dev-haskell/bimap-0.2:=[profile?]
	>=dev-haskell/boundedchan-1:=[profile?] <dev-haskell/boundedchan-2:=[profile?]
	>=dev-haskell/bv-sized-1.0.0:=[profile?]
	>=dev-haskell/concurrent-extra-0.7:=[profile?] <dev-haskell/concurrent-extra-0.8:=[profile?]
	>=dev-haskell/config-value-0.8:=[profile?] <dev-haskell/config-value-0.9:=[profile?]
	>=dev-haskell/deriving-compat-0.5:=[profile?]
	>=dev-haskell/fingertree-0.1.4:=[profile?]
	>=dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/hashtables-1.2.3:=[profile?]
	>=dev-haskell/hedgehog-1.0.2:=[profile?]
	>=dev-haskell/io-streams-1.5:=[profile?]
	>=dev-haskell/lens-4.18:=[profile?]
	>=dev-haskell/libbf-0.6:=[profile?] <dev-haskell/libbf-0.7:=[profile?]
	>=dev-haskell/megaparsec-8:=[profile?] <dev-haskell/megaparsec-10:=[profile?]
	>=dev-haskell/ordered-containers-0.2:=[profile?] <dev-haskell/ordered-containers-0.3:=[profile?]
	>=dev-haskell/panic-0.3:=[profile?]
	>=dev-haskell/parameterized-utils-2.1:=[profile?] <dev-haskell/parameterized-utils-2.2:=[profile?]
	>=dev-haskell/parsec-3:=[profile?] <dev-haskell/parsec-4:=[profile?]
	>=dev-haskell/prettyprinter-1.7.0:=[profile?]
	>=dev-haskell/s-cargot-0.1:=[profile?] <dev-haskell/s-cargot-0.2:=[profile?]
	>=dev-haskell/scientific-0.3.6:=[profile?]
	>=dev-haskell/tasty-0.10:=[profile?]
	>=dev-haskell/tasty-hedgehog-1.2:=[profile?]
	>=dev-haskell/tasty-hunit-0.9:=[profile?]
	>=dev-haskell/temporary-1.2:=[profile?]
	>=dev-haskell/text-1.2.4.0:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-haskell/th-lift-0.8.2:=[profile?] <dev-haskell/th-lift-0.9:=[profile?]
	>=dev-haskell/th-lift-instances-0.1:=[profile?] <dev-haskell/th-lift-instances-0.2:=[profile?]
	>=dev-haskell/unliftio-0.2:=[profile?] <dev-haskell/unliftio-0.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2.10:=[profile?]
	>=dev-haskell/utf8-string-1.0.1:=[profile?]
	>=dev-haskell/vector-0.12.1:=[profile?]
	>=dev-haskell/versions-6.0.2:=[profile?] <dev-haskell/versions-6.1:=[profile?]
	>=dev-haskell/zenc-0.1.0:=[profile?] <dev-haskell/zenc-0.2.0:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag drealtestdisable drealtestdisable) \
		$(cabal_flag solvertests solvertests) \
		$(cabal_flag stptestdisable stptestdisable)
}
