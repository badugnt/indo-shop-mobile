# Indo-Shop-Mobile

Nama : Edlyn Marva

NPM : 2406410494
<details>
<summary>Tugas 7</summary>
  
1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
   
    Widget tree pada Flutter adalah struktur hierarkis yang menggambarkan bagaimana widget-widget dalam aplikasi saling berhubungan satu sama lain. Setiap widget dapat memiliki satu atau lebih widget anak (child), dan widget anak ini dapat memiliki widget anaknya sendiri, membentuk sebuah pohon (tree). Hubungan parent-child bekerja dengan cara bahwa widget induk (parent) mengontrol tata letak dan perilaku dari widget anak (child). Misalnya, jika sebuah widget Column adalah parent, maka semua widget yang berada di dalamnya adalah child dari Column tersebut. Parent dapat mempengaruhi ukuran, posisi, dan gaya dari child-nya. sedangkan child memengaruhi tampilan dan fungsi dari parent-nya melalui properti yang diberikan.

2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
   
    -  MaterialApp: Widget root yang menyediakan tema dan navigasi dasar untuk aplikasi.
    - Scaffold: Menyediakan struktur dasar untuk halaman aplikasi, termasuk AppBar, body, dan floating action button.
    - AppBar: Menampilkan bilah aplikasi di bagian atas layar dengan judul dan tindakan.
    - snackbar: Menampilkan pesan sementara di bagian bawah layar.
    - card: Menampilkan informasi dalam format kartu dengan bayangan.
    - Text: Menampilkan teks di layar.
    - Icon: Menampilkan ikon grafis di layar.
    - Column: Mengatur widget anak secara vertikal.
    - Padding: Memberikan ruang kosong di sekitar widget anak.
    - Row: Mengatur widget anak secara horizontal.
    - SizedBox: Memberikan ruang kosong dengan ukuran tertentu di antara widget.
    - GridView: Menampilkan daftar widget dalam format grid.
    - Container: Widget serbaguna yang dapat digunakan untuk mengatur tata letak, dekorasi, dan gaya.
    - Center: Menempatkan widget anak di tengah-tengah parent-nya.
    - Material: Menyediakan "kanvas" dasar desain material, diperlukan oleh InkWell untuk efek visual.
    - InkWell: Menyediakan efek sentuhan (ripple effect) pada widget anak ketika ditekan.
    - MyHomePage: Widget utama yang menjadi halaman utuh (menggunakan StatelessWidget).
    - InfoCard: Widget kustom buatan untuk menampilkan kartu info (NPM, Nama, Kelas).
    - ItemCard: Widget kustom buatan untuk menampilkan item di dalam grid (All Product, dll.).

3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
   
    Widget MaterialApp berfungsi sebagai widget root yang menyediakan berbagai fitur penting untuk aplikasi Flutter yang mengikuti desain Material. Fitur-fitur ini meliputi tema, navigasi, dan pengaturan lokal. MaterialApp sering digunakan sebagai widget root karena ia mengatur banyak aspek dasar dari aplikasi, seperti menyediakan konteks tema yang konsisten di seluruh aplikasi, mengelola rute navigasi, dan menangani berbagai konfigurasi penting lainnya. Dengan menggunakan MaterialApp, pengembang dapat dengan mudah membangun aplikasi yang sesuai dengan pedoman desain Material tanpa harus mengatur semuanya secara manual.

4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
   
    StatelessWidget adalah widget yang tidak memiliki keadaan (state) yang dapat berubah selama siklus hidupnya. Widget ini hanya bergantung pada data yang diberikan saat pembuatan dan tidak dapat memperbarui dirinya sendiri. StatelessWidget cocok digunakan untuk elemen UI yang statis dan tidak memerlukan interaksi atau perubahan data. di lain sisi, statefulWidget adalah widget yang memiliki keadaan (state) yang dapat berubah selama siklus hidupnya. Widget ini dapat memperbarui dirinya sendiri ketika keadaan internalnya berubah, memungkinkan interaksi dan dinamika dalam UI. StatefulWidget cocok digunakan ketika widget perlu mempertahankan keadaan yang dapat berubah, seperti input pengguna, animasi, atau data yang diperbarui secara dinamis. 

5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
   
    BuildContext adalah objek yang menyediakan informasi tentang lokasi widget dalam widget tree. Ini penting di Flutter karena memungkinkan widget untuk mengakses data dan properti dari widget induk atau konteks sekitarnya. BuildContext digunakan di metode build untuk mendapatkan referensi ke widget lain, mengakses tema, dan melakukan navigasi antar halaman. Dengan BuildContext, widget dapat berinteraksi dengan lingkungan sekitarnya dan menyesuaikan tampilannya berdasarkan konteks tersebut.

6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
   
    Hot reload adalah fitur di Flutter yang memungkinkan pengembang untuk melihat perubahan kode secara instan tanpa harus memulai ulang aplikasi. Ketika hot reload dilakukan, Flutter hanya memperbarui bagian kode yang telah diubah dan mempertahankan status aplikasi saat ini, sehingga pengembang dapat dengan cepat melihat hasil perubahan tanpa kehilangan data atau status aplikasi. Hot restart, di sisi lain, memulai ulang seluruh aplikasi dari awal, menghapus semua status dan data yang ada. Hot restart digunakan ketika perubahan kode mempengaruhi struktur aplikasi secara signifikan atau ketika ada masalah yang tidak dapat diselesaikan dengan hot reload.
</details>