# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999
#hackport: flags: -generatemanpage,-testing,-profiling

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A tiling window manager"
HOMEPAGE="http://xmonad.org"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="no-autorepeat-keys"

RDEPEND="dev-haskell/data-default:=[profile?]
	dev-haskell/extensible-exceptions:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/setlocale:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/x11-1.8:=[profile?] <dev-haskell/x11-1.10:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( >=dev-haskell/quickcheck-2 )
"

DOCS=( CONFIG README.md CHANGES.md )
HTML_DOCS=( man/${PN}.1.html )

SAMPLE_CONFIG="${PN}.hs"

src_prepare() {
	default
	use no-autorepeat-keys && eapply "${FILESDIR}"/${PN}-0.14-check-repeat.patch
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-generatemanpage \
		--flag=-profiling \
		--flag=-testing
}

src_install() {
	default

	cabal_src_install

	echo -e "#!/bin/sh\n/usr/bin/${PN}" > "${T}/${PN}"
	exeinto /etc/X11/Sessions
	doexe "${T}/${PN}"

	insinto /usr/share/xsessions
	doins "${FILESDIR}/${PN}.desktop"

	insinto /usr/share/${PF}/ghc-$(ghc-version)/man
	doins man/${SAMPLE_CONFIG}

	doman man/${PN}.1
}

pkg_postinst() {
	haskell-cabal_pkg_postinst

	elog "A sample ${SAMPLE_CONFIG} configuration file can be found here:"
	elog "    /usr/share/${PF}/ghc-$(ghc-version)/man/${SAMPLE_CONFIG}"
	elog "The parameters in this file are the defaults used by ${PN}."
	elog "To customize ${PN}, copy this file to:"
	elog "    ~/.${PN}/${SAMPLE_CONFIG}"
	elog "After editing, use 'mod-q' to dynamically restart ${PN} "
	elog "(where the 'mod' key defaults to 'Alt')."
	elog ""
	elog "Read the README or man page for more information, and to see "
	elog "other possible configurations go to:"
	elog "    http://haskell.org/haskellwiki/Xmonad/Config_archive"
	elog "Please note that many of these configurations will require the "
	elog "x11-wm/xmonad-contrib package to be installed."
}
