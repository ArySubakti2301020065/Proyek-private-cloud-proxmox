# Failover Test

## Tujuan
Memastikan VM tetap tersedia ketika
node aktif mengalami kegagalan.

## Skenario
- VM berjalan di Node 3
- Node 3 dimatikan (shutdown)
- HA Manager mengambil alih

## Langkah Pengujian
1. Pastikan VM aktif di Node 3
2. Matikan Node 3
3. Tunggu HA Manager
4. VM dijalankan ulang di Node 2

## Hasil
- VM restart di node lain
- IP VM tetap sama
- Service kembali aktif

## Kesimpulan
Failover berjalan sesuai konsep
High Availability pada Proxmox.
