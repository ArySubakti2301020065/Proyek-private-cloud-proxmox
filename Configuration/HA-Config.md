# High Availability Configuration

## Tujuan
Memastikan VM tetap tersedia saat node gagal.

## Mekanisme
- Proxmox HA Manager aktif
- VM dimonitor secara otomatis
- VM direstart di node lain jika node mati

## Catatan
Failover bukan live migration dan
memiliki downtime singkat.
