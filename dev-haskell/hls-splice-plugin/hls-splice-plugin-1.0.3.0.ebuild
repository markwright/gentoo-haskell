# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="HLS Plugin to expand TemplateHaskell Splices and QuasiQuotes"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/plugins/hls-splice-plugin#readme"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	dev-haskell/aeson:=[profile?]
	dev-haskell/dlist:=[profile?]
	dev-haskell/extra:=[profile?]
	dev-haskell/foldl:=[profile?]
	dev-haskell/ghc-exactprint:=[profile?]
	>=dev-haskell/ghcide-1.9:=[profile?] <dev-haskell/ghcide-1.10:=[profile?]
	>=dev-haskell/hls-plugin-api-1.6:=[profile?] <dev-haskell/hls-plugin-api-1.7:=[profile?]
	dev-haskell/hls-refactor-plugin:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/lsp:=[profile?]
	dev-haskell/retrie:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? (
		>=dev-haskell/hls-test-utils-1.5 <dev-haskell/hls-test-utils-1.6
	)
"

src_test() {
	# Limit tasty threads to avoid random failures
	# See: <https://github.com/haskell/haskell-language-server/issues/3224#issuecomment-1257070277>
	export TASTY_NUM_THREADS=1

	haskell-cabal_src_test
}
