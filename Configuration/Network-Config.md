# Network Configuration

## Topologi Jaringan
- Jaringan lokal (LAN)
- Tanpa koneksi internet

## Konfigurasi Node
- Bridge: vmbr0
- Subnet: 192.168.1.0/24
- IP statis pada setiap node

## Alasan
Bridge yang sama diperlukan agar
live migration berjalan tanpa gangguan jaringan.
