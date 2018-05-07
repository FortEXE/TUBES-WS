== Services ==

====================================
GET
====================================

GetAllBarang
	memberikan semua data dari tabel Barang

GetAllSpesifikasi
	memberikan semua data dari tabel Spesifikasi

GetAllKategori
	memberikan semua data dari tabel Kategori

GetAllDetailBarang
	memberikan semua data dari tabel DetailBarang

GetPenggunaById/{id}
	menerima satu parameter String untuk id
	memberikan data Pengguna yang sesuai dengan Id masukan

GetBarangById/{id}
	menerima satu parameter String untuk id
	memberikan data yang sesuai dengan id masukan dari tabel Barang

GetSpesifikasiById/{id}
	menerima satu parameter String untuk id
	memberikan data yang sesuai dengan id masukan dari tabel Spesifikasi

GetKategoriById/{id}
	menerima satu parameter String untuk id
	memberikan data yang sesuai dengan id masukan dari tabel Kategori

GetDetailBarangById/{id}
	menerima satu parameter String untuk id
	memberikan data yang sesuai dengan id masukan dari tabel DetailBarang

====================================
POST
====================================

InsertBarang
	menerima satu parameter object Barang (frombody)
	memasukkan satu record ke tabel Barang

InsertSpesifikasi
	menerima satu parameter object Spesifikasi (frombody)
	memasukkan satu record ke tabel Spesifikasi

InsertKategori
	menerima satu parameter object Kategori (frombody)
	memasukkan satu record ke tabel Kategori

InsertDetailBarang
	menerima satu parameter object DetailBarang (frombody)
	memasukkan satu record ke tabel DetailBarang

====================================
PUT
====================================

UpdateBarang/{id}
	menerima satu parameter string id dan satu object Barang (frombody)
	mengubah data yang sesuai dengan ID masukkan dari tabel Barang menjadi object masukkan

UpdateSpesifikasi/{id}
	menerima satu parameter string id dan satu object Spesifikasi (frombody)
	mengubah data yang sesuai dengan ID masukkan dari tabel Spesifikasi menjadi object masukkan

UpdateKategori/{id}
	menerima satu parameter string id dan satu object Kategori (frombody)
	mengubah data yang sesuai dengan ID masukkan dari tabel Kategori menjadi object masukkan

UpdateDetailBarang/{id}
	menerima satu parameter string id dan satu object DetailBarang (frombody)
	mengubah data yang sesuai dengan ID masukkan dari tabel DetailBarang menjadi object masukkan

====================================
DELETE
====================================

DeleteBarang/{id}
	menerima satu parameter string id
	menghapus data yang sesuai dengan ID masukkan dari tabel Barang

DeleteSpesifikasi/{id}
	menerima satu parameter string id
	menghapus data yang sesuai dengan ID masukkan dari tabel Spesifikasi

DeleteKategori/{id}
	menerima satu parameter string id
	menghapus data yang sesuai dengan ID masukkan dari tabel Kategori

DeleteDetailBarang/{id}
	menerima satu parameter string id
	menghapus data yang sesuai dengan ID masukkan dari tabel DetailBarang
