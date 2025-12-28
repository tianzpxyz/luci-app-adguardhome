# luci-app-adguardhome（nft 版）简要说明

面向已熟悉原项目的用户: 仅将 **DNS** 重定向从 `iptables` 迁移到 `nftables`, 核心语义不变

## 变更概览
- `iptables` → `nftables`：使用 nft 应用/清理规则 `/var/etc/adguardhome.nft`
- 模板路径：`/usr/share/AdGuardHome/adguardhome.nft.tpl`

## 模板与默认行为
> [!TIP]
> 从 **v2.2.0** 开始，可在 LuCI 界面的 **WAN 接口** 选项中直接选择要排除的网络接口，无需手动编辑模板文件

## 声明
本项目基于 https://github.com/rufengsuixing/luci-app-adguardhome 修改。
原项目未提供明确的开源协议，当前仅用于个人学习研究，不用于商业用途。如原作者有任何异议，请联系我处理。
