a = Map("zerotier")
a.title = translate("Client")

a:section(SimpleSection).template  = "Client/zerotier_status"

t = a:section(NamedSection, "sample_config", "Client")
t.anonymous = true
t.addremove = false

e = t:option(Flag, "enabled", translate("Enable"))
e.default = 0
e.rmempty = false

e = t:option(DynamicList, "join", translate('Network ID'))
e.password = true
e.rmempty = false

e = t:option(Flag, "nat", translate("Auto NAT Clients"))
e.description = translate("服务商：xxxxx")
e.default = 0
e.rmempty = false

return a
