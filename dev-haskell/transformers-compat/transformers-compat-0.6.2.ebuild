# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.7.9999
#hackport: flags: -two,+mtl

CABAL_FEATURES="lib profile haddock hoogle hscolour"
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="A small compatibility shim for dev-haskell/transformers"
HOMEPAGE="https://github.com/ekmett/transformers-compat/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
	>=dev-haskell/mtl-2.1:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?]
"
DEPEND="${RDEPEND}"

src_configure() {
	local tf3_arg=()

	if has_version '=dev-haskell/transformers-0.3*'; then
		tf3_arg+=(--flag=three)
	else
		tf3_arg+=(--flag=-three)
	fi

	local tf4_arg=()

	if has_version '=dev-haskell/transformers-0.4*'; then
		tf4_arg+=(--flag=four)
	else
		tf4_arg+=(--flag=-four)
	fi

	local tf5_arg=()

	if has_version '=dev-haskell/transformers-0.5*'; then
		if has_version '>dev-haskell/transformers-0.5.3'; then
			tf5_arg+=(--flag=-five)
		else
			tf5_arg+=(--flag=five)
		fi
	else
		tf5_arg+=(--flag=-five)
	fi

	haskell-cabal_src_configure \
		--flag=mtl \
		--flag=-two \
		${tf3_arg[@]} \
		${tf4_arg[@]} \
		${tf5_arg[@]}
}
