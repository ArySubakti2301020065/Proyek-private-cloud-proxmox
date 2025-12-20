# Storage Configuration

## Jenis Storage
- Shared Storage: NFS
- Local Storage: ZFS (per node)

## Fungsi
- NFS digunakan untuk disk VM
- ZFS digunakan untuk penyimpanan lokal

## Alasan
Shared storage diperlukan agar VM dapat
dipindahkan antar node tanpa memindahkan disk.
