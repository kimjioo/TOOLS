# 创建并写入 BBR 配置
sudo tee /etc/sysctl.conf <<EOF
net.core.default_qdisc=fq
net.ipv4.tcp_congestion_control=bbr
EOF

# 应用配置
sudo sysctl -p

# 打印当前拥塞控制算法以进行验证
echo "TCP BBR 已配置完成。当前拥塞控制算法为："
sysctl net.ipv4.tcp_congestion_control
