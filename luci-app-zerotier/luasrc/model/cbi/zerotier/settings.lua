a = Map("zerotier")
a.title = translate("智慧组网")

a:section(SimpleSection).template  = "zerotier/zerotier_status"

t = a:section(NamedSection, "sample_config", "zerotier")
t.anonymous = true
t.addremove = false

e = t:option(Flag, "enabled", translate("Enable"))
e.default = 0
e.rmempty = false

e = t:option(DynamicList, "join", translate('序列号'))
e.password = true
e.rmempty = false

e = t:option(Flag, "nat", translate("Auto NAT Clients"))
e.description = translate("服务商：xxxxx")
e.default = 0
e.rmempty = false

return a
