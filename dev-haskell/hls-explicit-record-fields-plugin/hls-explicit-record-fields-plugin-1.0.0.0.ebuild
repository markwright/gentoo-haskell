# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

# TODO: Tests likely missing needed data
# 11 out of 11 tests failed
RESTRICT="test"

DESCRIPTION="Explicit record fields plugin for Haskell Language Server"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/plugins/hls-explicit-record-fields-plugin#readme"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/ghcide-1.9:=[profile?] <dev-haskell/ghcide-1.10:=[profile?]
	dev-haskell/hls-graph:=[profile?]
	>=dev-haskell/hls-plugin-api-1.6:=[profile?] <dev-haskell/hls-plugin-api-1.7:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/lsp:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0
	test? (
		dev-haskell/hls-test-utils
		dev-haskell/lsp-test
	)
"

src_test() {
	# Limit tasty threads to avoid random failures
	# See: <https://github.com/haskell/haskell-language-server/issues/3224#issuecomment-1257070277>
	export TASTY_NUM_THREADS=1

	haskell-cabal_src_test
}
