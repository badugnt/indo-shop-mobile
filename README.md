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
   
    Widget MaterialApp berfungsi sebagai widget root yang menyediakan berbagai fitur penting untuk aplikasi Flutter yang mengikuti desain Material. Fitur-fitur ini meliputi tema, navigasi, dan pengaturan lokal. MaterialApp sering digunakan sebagai- widget root karena ia mengatur banyak aspek dasar dari aplikasi, seperti menyediakan konteks tema yang konsisten di seluruh aplikasi, mengelola rute navigasi, dan menangani berbagai konfigurasi penting lainnya. Dengan menggunakan MaterialApp, pengembang dapat dengan mudah membangun aplikasi yang sesuai dengan pedoman desain Material tanpa harus mengatur semuanya secara manual.

4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
   
    StatelessWidget adalah widget yang tidak memiliki keadaan (state) yang dapat berubah selama siklus hidupnya. Widget ini hanya bergantung pada data yang diberikan saat pembuatan dan tidak dapat memperbarui dirinya sendiri. StatelessWidget cocok digunakan untuk elemen UI yang statis dan tidak memerlukan interaksi atau perubahan data. di lain sisi, statefulWidget adalah widget yang memiliki keadaan (state) yang dapat berubah selama siklus hidupnya. Widget ini dapat memperbarui dirinya sendiri ketika keadaan internalnya berubah, memungkinkan interaksi dan dinamika dalam UI. StatefulWidget cocok digunakan ketika widget perlu mempertahankan keadaan yang dapat berubah, seperti input pengguna, animasi, atau data yang diperbarui secara dinamis. 

5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
   
    BuildContext adalah objek yang menyediakan informasi tentang lokasi widget dalam widget tree. Ini penting di Flutter karena memungkinkan widget untuk mengakses data dan properti dari widget induk atau konteks sekitarnya. BuildContext digunakan di metode build untuk mendapatkan referensi ke widget lain, mengakses tema, dan melakukan navigasi antar halaman. Dengan BuildContext, widget dapat berinteraksi dengan lingkungan sekitarnya dan menyesuaikan tampilannya berdasarkan konteks tersebut.

6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
   
    Hot reload adalah fitur di Flutter yang memungkinkan pengembang untuk melihat perubahan kode secara instan tanpa harus memulai ulang aplikasi. Ketika hot reload dilakukan, Flutter hanya memperbarui bagian kode yang telah diubah dan mempertahankan status aplikasi saat ini, sehingga pengembang dapat dengan cepat melihat hasil perubahan tanpa kehilangan data atau status aplikasi. Hot restart, di sisi lain, memulai ulang seluruh aplikasi dari awal, menghapus semua status dan data yang ada. Hot restart digunakan ketika perubahan kode mempengaruhi struktur aplikasi secara signifikan atau ketika ada masalah yang tidak dapat diselesaikan dengan hot reload.
</details>

<details>
<summary>Tugas 8</summary>
  
1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
    Navigator.push() digunakan untuk menambahkan halaman baru ke tumpukan navigasi (navigation stack) tanpa menghapus halaman sebelumnya. Ini memungkinkan pengguna untuk kembali ke halaman sebelumnya dengan menggunakan tombol kembali (back button). Navigator.push() cocok digunakan ketika pengguna perlu menavigasi ke halaman baru tetapi masih ingin memiliki kemampuan untuk kembali ke halaman sebelumnya. Pada indo-shop, Navigator.push() digunakan saat akan melihat detail produk atau menambahkan produk baru, sehingga pengguna dapat kembali ke halaman utama setelah selesai.

    Adapun Navigator.pushReplacement() digunakan untuk menggantikan halaman saat ini dengan halaman baru, menghapus halaman sebelumnya dari tumpukan navigasi. Ini berarti pengguna tidak dapat kembali ke halaman sebelumnya setelah navigasi dilakukan. Navigator.pushReplacement() cocok digunakan ketika halaman sebelumnya tidak lagi relevan atau diperluka. Pada indo-shop, Navigator.pushReplacement() dapat digunakan untuk laman login karena setelah berhasil masuk, pengguna tidak perlu kembali ke halaman login lagi.

2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
    Hierarchy widget seperti Scaffold, AppBar, dan Drawer digunakan untuk membangun struktur halaman yang konsisten di seluruh aplikasi dengan cara berikut:

    - Scaffold: Scaffold berfungsi sebagai kerangka dasar untuk setiap halaman dalam aplikasi. Dengan menggunakan Scaffold, setiap halaman memiliki struktur yang seragam, termasuk area untuk AppBar di bagian atas, body di tengah, dan Drawer di sisi. Ini memastikan bahwa semua halaman memiliki tata letak yang konsisten dan mudah dinavigasi.

    - AppBar: AppBar ditempatkan di dalam Scaffold dan menyediakan bilah aplikasi yang konsisten di bagian atas setiap halaman. AppBar dapat berisi judul halaman, ikon navigasi, dan tindakan lainnya. Dengan menggunakan AppBar yang seragam di seluruh halaman, pengguna dapat dengan mudah mengenali konteks halaman yang sedang mereka kunjungi.

    - Drawer: Drawer juga ditempatkan di dalam Scaffold dan menyediakan menu navigasi samping yang dapat diakses dari mana saja dalam aplikasi. Dengan menggunakan Drawer yang konsisten di seluruh halaman, pengguna dapat dengan mudah berpindah antar bagian aplikasi tanpa kehilangan konteks.

    Secara keseluruhan, Scaffold menciptakan struktur tata letak yang konsisten di seluruh halaman aplikasi. Komponen AppBar berfungsi sebagai header yang seragam, menampilkan judul serta tombol aksi dengan tampilan yang sesuai tema aplikasi. Sementara itu, Drawer digunakan sebagai menu navigasi samping yang didefinisikan satu kali.  Dengan memanfaatkan hierarchy widget ini, aplikasi menjadi lebih terstruktur, mudah dinavigasi, dan memberikan pengalaman pengguna yang konsisten.

3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.

    Kelebihan menggunakan padding sebagai layout widget adalah memberikan ruang kosong di sekitar elemen-elemen form, sehingga tampilan menjadi lebih rapi dan mudah dibaca. Padding membantu memisahkan elemen-elemen form satu sama lain, menghindari kesan berdesakan, dan meningkatkan estetika antarmuka pengguna. Contohnya, dalam aplikasi indo-shop, padding digunakan di sekitar teks input dan tombol untuk memberikan jarak yang cukup antara elemen-elemen tersebut.
    ex code:
    ''dart
    Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Judul Produk",
                    labelText: "Judul Produk",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),

    Kelebihan menggunakan SingleChildScrollView adalah memungkinkan konten form yang panjang untuk digulir (scroll) secara vertikal atau horizontal. Ini sangat berguna ketika form memiliki banyak elemen yang tidak muat di layar sekaligus. Dengan SingleChildScrollView, pengguna dapat dengan mudah mengakses semua elemen form tanpa harus memperkecil ukuran tampilan. Contohnya, dalam aplikasi indo-shop, SingleChildScrollView digunakan untuk membungkus seluruh form penambahan produk agar pengguna dapat menggulir ke bawah untuk melihat semua input yang diperlukan.
    ex code:
    ''dart
    SingleChildScrollView(
          child: Column(
            children: [
              // elemen-elemen form
            ],
          ),
        ),

    kelebihan menggunakan ListView adalah memungkinkan penampilan daftar elemen form yang dinamis dan dapat digulir. Listview adalah alternatif dari SingleChildScrollView karena dapat menampilkan daftar elemen yang panjang dengan lebih efisien. ListView secara otomatis mengelola memori dan hanya membangun elemen yang terlihat di layar, sehingga lebih cocok untuk daftar yang besar. Aplikasi indo-shop terkini tidak menggunakan ListView sebagai layout widget di form, namun ListView dapat digunakan untuk menggantikan SingleChildScrollView pada form penambahan produk.
    ex code:
    ''dart
    ListView(
        children: [
            // elemen-elemen form
        ],
        ),
        
4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?

    Untuk menyesuaikan warna tema aplikasi Football Shop, saya menggunakan ThemeData di Flutter. Pada main.dart, saya mendefinisikan warna primer dan sekunder. Kemudian, saya menerapkan tema ini ke MaterialApp sehingga seluruh aplikasi menggunakan skema warna yang konsisten.
    
</details>
<details>
<summary>Tugas 9</summary>

1. Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map tanpa model (terkait validasi tipe, null-safety, maintainability)?
    
      Kita perlu membuat model Dart saat mengambil/mengirim data JSON untuk memastikan bahwa data yang diterima atau dikirim sesuai dengan struktur yang diharapkan. Model Dart memberikan validasi tipe yang kuat, sehingga kita dapat menangani data dengan lebih aman dan menghindari kesalahan tipe data. Dengan menggunakan model, kita juga dapat memanfaatkan fitur null-safety di Dart, yang membantu mencegah kesalahan runtime akibat nilai null. Selain itu, model Dart meningkatkan maintainability kode karena struktur data menjadi lebih jelas dan mudah dipahami. Jika kita langsung memetakan Map<String, dynamic> tanpa model, kita berisiko menghadapi masalah validasi tipe, kesulitan dalam menangani nilai null, dan kode yang sulit dipelihara karena kurangnya struktur yang jelas.

2. Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
    
      Package http digunakan untuk melakukan permintaan HTTP dasar seperti GET, POST, PUT, dan DELETE ke server. Ini memungkinkan kita untuk berkomunikasi dengan backend dan mengambil atau mengirim data. Namun, package http tidak secara otomatis menangani cookie atau sesi autentikasi.

      CookieRequest, di sisi lain, adalah ekstensi dari package http yang dirancang khusus untuk menangani cookie dan sesi autentikasi. CookieRequest menyimpan cookie yang diterima dari server dan mengirimkannya kembali pada permintaan berikutnya, sehingga memungkinkan autentikasi berbasis sesi. Perbedaan utama antara http dan CookieRequest adalah bahwa CookieRequest mengelola cookie secara otomatis, sementara http memerlukan penanganan manual untuk cookie. Tanpa CookieRequest, kita harus mengelola cookie sendiri di Http, yang dapat menjadi rumit dan rentan terhadap kesalahan.
 3. Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
    
      Instance CookieRequest perlu dibagikan ke semua komponen di aplikasi Flutter karena autentikasi berbasis sesi bergantung pada cookie yang disimpan dalam instance tersebut. Dengan membagikan instance CookieRequest di provider, semua komponen aplikasi dapat mengakses cookie yang sama, sehingga mereka dapat melakukan permintaan HTTP yang memerlukan autentikasi tanpa harus mengelola cookie secara terpisah. Ini memastikan konsistensi dalam sesi pengguna di seluruh aplikasi dan memungkinkan pengguna untuk tetap masuk (logged in) saat menavigasi antar halaman. Jika setiap komponen memiliki instance CookieRequest yang berbeda, maka cookie tidak akan konsisten, dan pengguna mungkin harus masuk kembali setiap kali mereka berpindah halaman.

 4. Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
    
      Untuk menghubungkan Flutter dengan Django, beberapa konfigurasi konektivitas diperlukan:

      - Menambahkan 10.0.2.2 pada ALLOWED_HOSTS di Django settings.py untuk mengizinkan koneksi dari emulator Android.
      - Mengaktifkan CORS (Cross-Origin Resource Sharing) di Django untuk mengizinkan permintaan dari domain yang berbedad dengan cara memasang django-cors-headers dan melakukan konfigurasi CORS_ALLOWED_ORIGINS atau CORS_ALLOW_ALL_ORIGINS
      - Mengatur SameSite/cookie di Django untuk memastikan cookie dapat dikirim dalam permintaan lintas situs dengan mengatur SESSION_COOKIE_SAMESITE dan CSRF_COOKIE_SAMESITE ke 'None' serta mengaktifkan SESSION_COOKIE_SECURE dan CSRF_COOKIE_SECURE.
      - Menambahkan izin akses internet di AndroidManifest.xml untuk memungkinkan aplikasi Flutter melakukan permintaan jaringan.
      Jika konfigurasi ini tidak dilakukan dengan benar, flutter akan mengalami kesulitan dalam berkomunikasi dengan backend Django. Misalnya, tanpa menambahkan 10.0.2.2 pada ALLOWED_HOSTS, emulator Android tidak akan dapat mengakses server Django yang berjalan di localhost. Tanpa mengaktifkan CORS, permintaan dari aplikasi Flutter akan diblokir oleh browser atau server karena kebijakan keamanan lintas domain. Jika pengaturan SameSite/cookie tidak dikonfigurasi dengan benar, cookie autentikasi mungkin tidak dikirim atau diterima, menyebabkan masalah dalam sesi login. Terakhir, tanpa izin akses internet di AndroidManifest.xml, aplikasi Flutter tidak akan dapat melakukan permintaan jaringan sama sekali.

 5. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
      Mekanisme pengiriman data dari input hingga dapat ditampilkan pada Flutter melibatkan beberapa langkah:

      - Pengguna memasukkan data melalui formulir di aplikasi Flutter.
      - Data yang dimasukkan dikumpulkan dan dikemas dalam format JSON atau Map<String, dynamic>.
      - Aplikasi Flutter menggunakan package http atau CookieRequest untuk mengirim permintaan POST  ke endpoint API Django yang sesuai.
      - Django menerima permintaan, memproses data yang diterima, dan menyimpannya di database jika diperlukan.
      - Setelah data berhasil disimpan, Django mengirimkan respons kembali ke aplikasi Flutter, biasanya dalam format JSON yang berisi data yang baru dibuat atau diperbarui.
      - Aplikasi Flutter menerima respons dari Django dan mengurai data JSON menjadi model Dart yang sesuai.
      - Data yang telah diurai kemudian digunakan untuk memperbarui tampilan UI di aplikasi Flutter, seperti menampilkan daftar produk baru atau memperbarui informasi yang ada.

      
 6. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
      Mekanisme autentikasi dari login, register, hingga logout melibatkan beberapa langkah:

      - Register:
        - Pengguna memasukkan data akun (username, password) melalui formulir pendaftaran di aplikasi Flutter.
        - Aplikasi Flutter mengirimkan permintaan POST ke endpoint API Django untuk pendaftaran pengguna.
        - Django menerima permintaan, memvalidasi data, membuat akun baru di database, dan mengirimkan respons kembali ke Flutter.
      
      - Login:
        - Pengguna memasukkan kredensial (username dan password) melalui formulir login di aplikasi Flutter.
        - Aplikasi Flutter mengirimkan permintaan POST ke endpoint API Django untuk autentikasi.
        - Django memverifikasi kredensial, dan jika valid, membuat sesi pengguna dan mengirimkan cookie sesi kembali ke Flutter.
        - Aplikasi Flutter menyimpan cookie sesi menggunakan CookieRequest untuk digunakan dalam permintaan selanjutnya.
        - Setelah login berhasil, menu khusus untuk pengguna yang sudah masuk ditampilkan di aplikasi Flutter.

      - Logout:
        - Pengguna memilih opsi logout di aplikasi Flutter.
        - Aplikasi Flutter mengirimkan permintaan POST ke endpoint API Django untuk logout.
        - Django menghapus sesi pengguna dan mengirimkan respons konfirmasi kembali ke Flutter.
        - Aplikasi Flutter menghapus cookie sesi dari CookieRequest dan menampilkan page login.


 7. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial). 
      langkah-langkah yang saya lakukan untuk mengimplementasikan checklist di atas adalah sebagai berikut:
      1) Pertama, saya mengimplementasikan fitur registrasi akun. Di Django, saya membuat aplikasi bernama authentication dan menambahkan fungsi register di file views.py untuk memvalidasi input, seperti memastikan password cocok dan username belum digunakan. Setelah itu, saya konfigurasi path di urls.py. Di Flutter, saya membuat file register.dart yang berisi form registrasi menggunakan widget seperti TextField untuk username, password, dan konfirmasi password. Saya menggunakan package pbp_django_auth untuk menghubungkan form ini dengan endpoint Django dan menampilkan pesan kesalahan jika registrasi gagal atau mengarahkan ke halaman login jika berhasil.

      2) Selanjutnya, saya membuat halaman login pada Flutter. Di Django, saya menambahkan fungsi login di views.py untuk memverifikasi kredensial pengguna, lalu saya konfigurasi path di urls.py. Di Flutter, saya membuat file login.dart yang berisi form login. Saya menggunakan CookieRequest dari pbp_django_auth untuk mengirim data login ke server Django.

      3) Setelah itu, saya mengintegrasikan sistem autentikasi Django dengan Flutter. Di Django, saya mengatur middleware CorsMiddleware pada settings.py untuk mendukung komunikasi lintas domain. Saya juga menambahkan variabel konfigurasi seperti CORS_ALLOW_ALL_ORIGINS dan ALLOWED_HOSTS. Di Flutter, saya menambahkan Provider di main.dart untuk menyediakan objek CookieRequest ke seluruh aplikasi, sehingga session dapat digunakan secara global.
      4) kemudian saya membuat file product_model.dart yang berisi kelas Product dengan atribut yang sesuai dengan model di Django. S

      5) Berikutnya, saya membuat halaman daftar semua item. Di Flutter, saya membuat file product_entry_list.dart dan menggunakan FutureBuilder untuk mengambil data dari endpoint Django menggunakan CookieRequest.get. Data ditampilkan menggunakan widget ListView.builder, dengan menampilkan atribut seperti name, price, description, category, dll. 
      6) Setelah itu, saya membuat halaman detail untuk setiap item. Di Flutter, saya membuat file product_detail.dart yang menerima objek Product sebagai argumen. Halaman ini menampilkan seluruh atribut produk dan menyediakan tombol kembali ke halaman daftar item menggunakan Navigator.pop.

      7) Kemudian, saya menambahkan fitur filter pada halaman daftar item milik user untuk menampilkan hanya item yang terkait dengan pengguna yang login. Di Django, saya memodifikasi query di views.py untuk memfilter item berdasarkan pengguna yang sedang login. Di Flutter, saya membuat file dart baru yaitu myproduct_entry_list.dart yang mana di dalamnya dilakukan permintaan GET ke endpoint Django menyertakan sesi autentikasi dari CookieRequest, sehingga hanya item milik pengguna yang ditampilkan.


      8) Terakhir, saya mengintegrasikan form input di Flutter dengan Django. Di Django, saya membuat path create-flutter/ untuk menerima data dari Flutter dan menyimpannya ke database. Di Flutter, saya membuat file productlist_form.dart yang berisi form untuk menambahkan produk baru. Form ini mengirim data ke endpoint Django menggunakan CookieRequest.post dan menampilkan pesan sukses atau kesalahan sesuai respons dari server.

          </details>