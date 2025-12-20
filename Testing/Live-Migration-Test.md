# Live Migration Test

## Tujuan
Menguji kemampuan Proxmox melakukan
live migration tanpa downtime signifikan.

## Skenario
- VM berjalan di Node 1
- Live migration ke Node 2
- Service tetap dapat diakses

## Langkah Pengujian
1. Jalankan VM 
2. Lakukan ping ke IP VM
3. Jalankan live migration
4. Amati hasil ping

## Hasil
- VM berpindah ke node tujuan
- Ping hanya delay singkat
- IP VM tetap sama

## Kesimpulan
Live migration berjalan dengan baik
tanpa menghentikan layanan.
