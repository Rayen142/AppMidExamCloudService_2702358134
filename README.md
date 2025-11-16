# Proyek Ujian Tengah Semester - Cloud Service 

![Python](https://img.shields.io/badge/Python-3.10-blue.svg?logo=python)
![Docker](https://img.shields.io/badge/Docker-blue.svg?logo=docker)
![Podman](https://img.shields.io/badge/Podman-red.svg?logo=podman)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-CI-blue.svg?logo=githubactions)

Ini adalah repositori proyek untuk Ujian Tengah Semester mata kuliah **Cloud Services**.

- **Nama:** Ryan Hanif Dwihandoyo
- **NIM:** 2702358134

---

## 📄 Deskripsi Proyek

Proyek ini mendemonstrasikan pemahaman tentang alur kerja DevOps modern secara *end-to-end*. Ini mencakup pengembangan aplikasi Python sederhana, penerapan *version control* yang baik dengan Git, *containerization* aplikasi menggunakan Docker, dan implementasi alur kerja CI/CD dasar menggunakan GitHub Actions.

Tujuan utamanya adalah untuk membuktikan konsep **portabilitas** dan **interoperabilitas** *container* dengan menjalankan *image* yang sama di berbagai lingkungan (Windows & Linux) dan menggunakan *runtime* alternatif (Docker & Podman).

## 🚀 Objektif & Fitur Utama

Proyek ini mencakup beberapa tujuan utama yang telah dicapai:

* **Aplikasi Sederhana (`app.py`):** Sebuah aplikasi Python yang melaporkan Sistem Operasi (OS) dan Arsitektur mesin tempat ia dijalankan.
* **Version Control (`Git`):** Menerapkan alur kerja Git, termasuk *branching* (`fitur/tambah-readme`), *merge* melalui *Pull Request*, dan *push* ke repositori *public*.
* **Otomatisasi CI/CD (`GitHub Actions`):** Sebuah alur kerja CI (`.github/workflows/ci.yml`) yang secara otomatis melakukan *checkout*, *setup* Python, dan menjalankan skrip `app.py` pada setiap *push* untuk verifikasi.
* **Containerization (`Dockerfile`):** Sebuah `Dockerfile` yang membungkus aplikasi Python ke dalam *container image* yang ringan dan portabel (`python:3.10-slim`).
* **Cross-Platform Testing:** Membuktikan bahwa *image* yang sama dapat berjalan identik di **Windows (PowerShell)** dan **Linux (WSL/Ubuntu)**.
* **Runtime Interoperability:** Menguji dan memvalidasi bahwa *image* yang sama dapat dibangun dan dijalankan menggunakan *container runtime* alternatif, **Podman**.

## 🛠️ Teknologi yang Digunakan

* Python 3.10
* Docker & Docker Desktop
* Podman
* Git & GitHub
* GitHub Actions
* WSL 2 (Ubuntu)

## ⚙️ Instruksi Instalasi dan Cara Menjalankan

Anda dapat menjalankan aplikasi ini menggunakan Docker atau Podman.

### Prasyarat
* Git
* Docker Desktop (dalam keadaan berjalan)
* Podman (untuk pengujian alternatif)

### 1. Menjalankan dengan Docker

1.  **Clone repositori ini:**
    ```bash
    git clone [https://github.com/Rayen142/AppMidExamCloudService_2702358134.git](https://github.com/Rayen142/AppMidExamCloudService_2702358134.git)
    ```

2.  **Masuk ke direktori proyek:**
    ```bash
    cd AppMidExamCloudService_2702358134
    ```

3.  **Build Docker image:**
    Perintah ini akan membaca `Dockerfile` dan membangun *image* bernama `aplikasi-ujian`.
    ```bash
    docker build -t aplikasi-ujian .
    ```

4.  **Jalankan container:**
    Anda dapat menjalankan ini di PowerShell atau WSL/Ubuntu.
    ```bash
    docker run --rm aplikasi-ujian
    ```

### 2. Menjalankan dengan Podman (Alternatif)

1.  **Pastikan Podman machine berjalan (jika di Windows):**
    ```bash
    podman machine start
    ```

2.  **Build Podman image:**
    (Anda harus *build* ulang karena Podman memiliki *storage* *image* terpisah dari Docker).
    ```bash
    podman build -t aplikasi-ujian .
    ```

3.  **Jalankan container:**
    ```bash
    podman run --rm localhost/aplikasi-ujian
    ```

## 🤖 Alur Kerja CI (GitHub Actions)

Repositori ini dikonfigurasi dengan alur kerja Continuous Integration (CI) sederhana yang terletak di `.github/workflows/ci.yml`.

Setiap kali ada `push` ke *branch* `main`, alur kerja ini akan otomatis terpicu dan melakukan langkah-langkah berikut:
1.  Melakukan *checkout* kode dari repositori.
2.  Menyiapkan lingkungan Python 3.10.
3.  Menjalankan skrip `app.py` untuk memverifikasi bahwa aplikasi dapat dieksekusi tanpa *error*.
