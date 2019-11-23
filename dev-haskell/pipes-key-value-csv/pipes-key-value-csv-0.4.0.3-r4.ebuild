# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Streaming processing of CSV files preceded by key-value pairs"
HOMEPAGE="https://github.com/marcinmrotek/key-value-csv"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="devel"

RDEPEND=">=dev-haskell/bifunctors-5.2:=[profile?] <dev-haskell/bifunctors-5.6:=[profile?]
	>=dev-haskell/data-default-class-0.0.1:=[profile?] <dev-haskell/data-default-class-0.2:=[profile?]
	>=dev-haskell/lens-4.12:=[profile?]
	>=dev-haskell/mtl-2.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/pipes-4.1:=[profile?] <dev-haskell/pipes-4.4:=[profile?]
	>=dev-haskell/pipes-bytestring-2.1:=[profile?] <dev-haskell/pipes-bytestring-2.2:=[profile?]
	>=dev-haskell/pipes-group-1.0:=[profile?] <dev-haskell/pipes-group-1.1:=[profile?]
	>=dev-haskell/pipes-parse-3.0:=[profile?] <dev-haskell/pipes-parse-3.1:=[profile?]
	>=dev-haskell/pipes-safe-2.2:=[profile?]
	>=dev-haskell/pipes-text-0.0:=[profile?] <dev-haskell/pipes-text-0.1:=[profile?]
	>=dev-haskell/reflection-1.5:=[profile?] <dev-haskell/reflection-2.2:=[profile?]
	>=dev-haskell/semigroupoids-5.0.0:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/vinyl-0.5.2:=[profile?]
	>=dev-haskell/vinyl-utils-0.2.0.1:=[profile?] <dev-haskell/vinyl-utils-0.4:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/contravariant-1.2
		>=dev-haskell/quickcheck-2.8 )
"

PATCHES=( "${FILESDIR}"/${PN}-0.4.0.3-vinyl-0.11.patch )

src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck      >= 2.8 && < 2.9' 'QuickCheck      >= 2.8' \
		'lens               >= 4.12    && < 4.16' 'lens               >= 4.12' \
		'vinyl              >= 0.5.2   && < 0.8' 'vinyl              >= 0.5.2' \
		'contravariant   >= 1.2 && < 1.5' 'contravariant   >= 1.2' \
		'containers         >= 0.5.6   && < 0.6' 'containers         >= 0.5.6' \
		'pipes-safe         >= 2.2     && < 2.3' 'pipes-safe         >= 2.2' \
		'semigroupoids      >= 5.0.0   && < 5.3' 'semigroupoids      >= 5.0.0' \
		'semigroups == 0.18.*' 'semigroups >= 0.18'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag devel devel)
}
