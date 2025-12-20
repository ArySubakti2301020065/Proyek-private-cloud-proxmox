# Proxmox VE Enterprise Network Topology (3 Nodes)

## Deskripsi
Dokumen ini menjelaskan desain topologi jaringan **Proxmox Virtual Environment (VE)** dengan pendekatan **enterprise**, yang terdiri dari **3 node Proxmox**, pemisahan **Management Network** dan **Storage Network**, serta penggunaan **ZFS** dan **NFS Storage**.  
Topologi ini dibuat menggunakan **Cisco Packet Tracer** dan disajikan **tanpa konfigurasi jaringan**.

---

## Arsitektur Topologi

Topologi dirancang untuk mendukung:
- Cluster Proxmox VE 3 Node
- High Availability (HA)
- Pemisahan trafik manajemen dan penyimpanan
- Virtual Machine dan LXC Container

---

## Komponen Jaringan

### 1. Proxmox Node
Setiap Proxmox Node direpresentasikan menggunakan **Server-PT** pada Cisco Packet Tracer.

| Nama Node | Fungsi |
|----------|--------|
| Proxmox Node 1 | Host Proxmox VE, ZFS Storage, VM & LXC |
| Proxmox Node 2 | Host Proxmox VE, ZFS Storage |
| Proxmox Node 3 | Host Proxmox VE, ZFS Storage |

**Catatan:**
- ZFS merupakan local storage pada masing-masing node.
- Virtual Machine (VM) dan LXC Container berjalan di atas Proxmox Node.

---

### 2. Management Network
Management Network digunakan untuk:
- Akses Web GUI Proxmox VE
- Komunikasi cluster
- Monitoring dan administrasi sistem

**Perangkat:**
- PC Admin / Client (PC-PT)
- Management Switch (Cisco 2960)

---

### 3. Storage Network
Storage Network digunakan khusus untuk trafik penyimpanan.

**Perangkat:**
- Storage Switch (Cisco 2960)
- NFS Storage Server (Server-PT)

**Fungsi:**
- Menyediakan shared storage berbasis NFS
- Mendukung penyimpanan VM dan data antar node

---

## Storage yang Digunakan

### ZFS Storage
- Bersifat local storage
- Tersedia pada masing-masing Proxmox Node
- Digunakan untuk penyimpanan VM dan container lokal

### NFS Storage
- Bersifat shared storage
- Terpusat pada NFS Storage Server
- Terhubung melalui Storage Network

---

## Virtualisasi

- **Virtual Machine (VM)**  
  Digunakan untuk menjalankan sistem operasi secara penuh.

- **LXC Container**  
  Digunakan untuk layanan berbasis container yang ringan dan efisien.

VM dan LXC Container direpresentasikan secara logis dan tidak digambarkan sebagai perangkat fisik terpisah.

---

## Jenis Koneksi

| Koneksi | Jenis Kabel |
|-------|-------------|
| PC Admin → Switch | Copper Straight-Through |
| Proxmox Node → Switch | Copper Straight-Through |
| NFS Server → Switch | Copper Straight-Through |

---

## Tujuan Desain
- Mensimulasikan topologi Proxmox VE enterprise
- Memberikan gambaran pemisahan jaringan manajemen dan storage
- Digunakan sebagai dokumentasi dan perancangan infrastruktur
- Tidak mencakup konfigurasi IP atau layanan jaringan

---

## Kesimpulan
Topologi ini menggambarkan desain Proxmox VE Cluster dengan pendekatan enterprise yang menekankan pada pemisahan fungsi jaringan, penggunaan storage lokal dan terpusat, serta dukungan virtualisasi menggunakan VM dan LXC Container.  
Desain ini cocok digunakan untuk keperluan pembelajaran, simulasi, dan dokumentasi sistem virtualisasi.
