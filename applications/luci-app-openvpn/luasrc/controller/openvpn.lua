-- Copyright 2008 Steven Barth <steven@midlink.org>
-- Copyright 2008 Jo-Philipp Wich <jow@openwrt.org>
-- Licensed to the public under the Apache License 2.0.

module("luci.controller.openvpn", package.seeall)

function index()
	entry( {"admin", "vpn", "openvpn"}, cbi("openvpn"), _("OpenVPN"), 81)
	entry( {"admin", "vpn", "openvpn", "basic"},    cbi("openvpn-basic"),    nil ).leaf = true
	entry( {"admin", "vpn", "openvpn", "advanced"}, cbi("openvpn-advanced"), nil ).leaf = true
end
