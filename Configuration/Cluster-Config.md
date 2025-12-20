# Cluster Configuration

## Tujuan
Membangun Proxmox Cluster untuk mendukung
high availability dan live migration.

## Konfigurasi
- Jumlah node: 3
- Cluster name: blckpink-cluster
- Corosync aktif
- Quorum menggunakan mayoritas node

## Catatan
Semua node berada dalam satu jaringan lokal
dan dapat saling berkomunikasi.

| Node1 | 192.168.43.10 |
| Node2 | 192.168.43.11 |
| Node3 | 192.168.43.12 |
