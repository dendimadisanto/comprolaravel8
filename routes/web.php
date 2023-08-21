<?php
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

/* FRONT END */
// Home

Route::group(['prefix' => 'laravel-filemanager'], function () {
     \UniSharp\LaravelFilemanager\Lfm::routes();
 });


Route::get('/', 'App\Http\Controllers\Home@index');
Route::get('home', 'App\Http\Controllers\Home@index');
Route::get('kontak', 'App\Http\Controllers\Home@kontak');
Route::get('pemesanan', 'App\Http\Controllers\Home@pemesanan');
Route::get('konfirmasi', 'App\Http\Controllers\Home@konfirmasi');
Route::get('pembayaran', 'App\Http\Controllers\Home@pembayaran');
Route::post('proses_pemesanan', 'App\Http\Controllers\Home@proses_pemesanan');
Route::get('berhasil/{par1}', 'App\Http\Controllers\Home@berhasil');
Route::get('cetak/{par1}', 'App\Http\Controllers\Home@cetak');
Route::get('javawebmedia', 'App\Http\Controllers\Home@javawebmedia');
Route::get('aksi', 'App\Http\Controllers\Aksi@index');
Route::get('aksi/status/{par1}', 'App\Http\Controllers\Aksi@status');
// Login
Route::get('login', 'App\Http\Controllers\Login@index');
Route::post('login/check', 'App\Http\Controllers\Login@check');
Route::get('login/lupa', 'App\Http\Controllers\Login@lupa');
Route::get('login/logout', 'App\Http\Controllers\Login@logout');
// Berita
Route::get('berita', 'App\Http\Controllers\Berita@index');
Route::get('berita/read/{slug_berita}', 'App\Http\Controllers\Berita@read');
Route::get('berita/layanan/{slug_berita}', 'App\Http\Controllers\Berita@layanan');
Route::get('berita/terjadi/{slug_berita}', 'App\Http\Controllers\Berita@terjadi');
Route::get('berita/kategori/{id}', 'App\Http\Controllers\Berita@kategori');
// Akreditasi
Route::get('provider-akreditasi', 'App\Http\Controllers\Akreditasi@index');
Route::get('akreditasi/read/{par1}', 'App\Http\Controllers\Akreditasi@read');
Route::get('layanan/{par1}', 'App\Http\Controllers\Akreditasi@layanan');
Route::get('akreditasi/kategori/{par1}', 'App\Http\Controllers\Akreditasi@kategori');
// download
Route::get('download', 'App\Http\Controllers\Download@index');
Route::get('download/unduh/{par1}', 'App\Http\Controllers\Download@unduh');
Route::get('download/kategori/{par1}', 'App\Http\Controllers\Download@kategori');
Route::get('dokumen', 'App\Http\Controllers\Download@index');
Route::get('dokumen/unduh/{par1}', 'App\Http\Controllers\Download@unduh');
Route::get('dokumen/detail/{par1}/{par2}', 'App\Http\Controllers\Download@detail');
Route::get('download/detail/{par1}/{par2}', 'App\Http\Controllers\Download@detail');
// galeri
Route::get('galeri', 'App\Http\Controllers\Galeri@index');
Route::get('galeri/detail/{id}', 'App\Http\Controllers\Galeri@detail');
// video
Route::get('video', 'App\Http\Controllers\Video@index');
Route::get('video/detail/{par1}', 'App\Http\Controllers\Video@detail');
Route::get('webinar', 'App\Http\Controllers\Video@index');
Route::get('webinar/detail/{par1}/{par2}', 'App\Http\Controllers\Video@detail');
// Proyek
Route::get('proyek', 'App\Http\Controllers\Proyek@index');
Route::get('proyek/kategori/{par1}', 'App\Http\Controllers\Proyek@kategori');
Route::get('proyek/detail/{par1}', 'App\Http\Controllers\Proyek@detail');
Route::get('proyek/cetak/{par1}', 'App\Http\Controllers\Proyek@cetak');
/* END FRONT END */
/* BACK END */

// dasbor
Route::get('admin/dasbor', 'App\Http\Controllers\Admin\Dasbor@index');
Route::get('admin/dasbor/konfigurasi', 'App\Http\Controllers\Admin\Dasbor@konfigurasi');
// pemesanan
Route::get('admin/pemesanan', 'App\Http\Controllers\Admin\Pemesanan@index');
Route::get('admin/pemesanan/tambah', 'App\Http\Controllers\Admin\Pemesanan@tambah');
Route::get('admin/pemesanan/detail/{par1}', 'App\Http\Controllers\Admin\Pemesanan@detail');
Route::get('admin/pemesanan/status_pemesanan/{par1}', 'App\Http\Controllers\Admin\Pemesanan@status_pemesanan');
Route::get('admin/pemesanan/cetak/{par1}', 'App\Http\Controllers\Admin\Pemesanan@cetak');
Route::get('admin/pemesanan/edit/{par1}', 'App\Http\Controllers\Admin\Pemesanan@edit');
Route::get('admin/pemesanan/filter/{par1}/{par2}/{par3}', 'App\Http\Controllers\Admin\Pemesanan@filter');
Route::get('admin/pemesanan/cari', 'App\Http\Controllers\Admin\Pemesanan@cari');
Route::post('admin/pemesanan/proses', 'App\Http\Controllers\Admin\Pemesanan@proses');
Route::post('admin/pemesanan/tambah_proses', 'App\Http\Controllers\Admin\Pemesanan@tambah_proses');
Route::post('admin/pemesanan/edit_proses', 'App\Http\Controllers\Admin\Pemesanan@edit_proses');
// user
Route::get('admin/user', 'App\Http\Controllers\Admin\User@index');
Route::post('admin/user/tambah', 'App\Http\Controllers\Admin\User@tambah');
Route::get('admin/user/edit/{id}', 'App\Http\Controllers\Admin\User@edit');
Route::post('admin/user/proses_edit', 'App\Http\Controllers\Admin\User@proses_edit');
Route::get('admin/user/delete/{id}', 'App\Http\Controllers\Admin\User@delete');
Route::post('admin/user/proses', 'App\Http\Controllers\Admin\User@proses');
// konfigurasi
Route::get('admin/konfigurasi', 'App\Http\Controllers\Admin\Konfigurasi@index');
Route::get('admin/konfigurasi/logo', 'App\Http\Controllers\Admin\Konfigurasi@logo');
Route::get('admin/konfigurasi/profil', 'App\Http\Controllers\Admin\Konfigurasi@profil');
Route::get('admin/konfigurasi/icon', 'App\Http\Controllers\Admin\Konfigurasi@icon');
Route::get('admin/konfigurasi/email', 'App\Http\Controllers\Admin\Konfigurasi@email');
Route::get('admin/konfigurasi/gambar', 'App\Http\Controllers\Admin\Konfigurasi@gambar');
Route::get('admin/konfigurasi/pembayaran', 'App\Http\Controllers\Admin\Konfigurasi@pembayaran');
Route::post('admin/konfigurasi/proses', 'App\Http\Controllers\Admin\Konfigurasi@proses');
Route::post('admin/konfigurasi/proses_logo', 'App\Http\Controllers\Admin\Konfigurasi@proses_logo');
Route::post('admin/konfigurasi/proses_icon', 'App\Http\Controllers\Admin\Konfigurasi@proses_icon');
Route::post('admin/konfigurasi/proses_email', 'App\Http\Controllers\Admin\Konfigurasi@proses_email');
Route::post('admin/konfigurasi/proses_gambar', 'App\Http\Controllers\Admin\Konfigurasi@proses_gambar');
Route::post('admin/konfigurasi/proses_pembayaran', 'App\Http\Controllers\Admin\Konfigurasi@proses_pembayaran');
Route::post('admin/konfigurasi/proses_profil', 'App\Http\Controllers\Admin\Konfigurasi@proses_profil');
// berita
Route::get('admin/berita', 'App\Http\Controllers\Admin\Berita@index');
Route::get('admin/berita/cari', 'App\Http\Controllers\Admin\Berita@cari');
Route::get('admin/berita/status_berita/{par1}', 'App\Http\Controllers\Admin\Berita@status_berita');
Route::get('admin/berita/kategori/{par1}', 'App\Http\Controllers\Admin\Berita@kategori');
Route::get('admin/berita/jenis_berita/{jenis_berita}', 'App\Http\Controllers\Admin\Berita@jenis_berita');
Route::get('admin/berita/author/{par1}', 'App\Http\Controllers\Admin\Berita@author');
Route::get('admin/berita/tambah', 'App\Http\Controllers\Admin\Berita@tambah');
Route::get('admin/berita/edit/{id}', 'App\Http\Controllers\Admin\Berita@edit');
Route::get('admin/berita/delete/{id}/{parameter}', 'App\Http\Controllers\Admin\Berita@delete');
Route::post('admin/berita/tambah_proses', 'App\Http\Controllers\Admin\Berita@tambah_proses');
Route::post('admin/berita/edit_proses', 'App\Http\Controllers\Admin\Berita@edit_proses');
Route::post('admin/berita/proses', 'App\Http\Controllers\Admin\Berita@proses');
Route::get('admin/berita/add', 'App\Http\Controllers\Admin\Berita@add');
// agenda
Route::get('admin/agenda', 'App\Http\Controllers\Admin\Agenda@index');
Route::get('admin/agenda/cari', 'App\Http\Controllers\Admin\Agenda@cari');
Route::get('admin/agenda/status_agenda/{par1}', 'App\Http\Controllers\Admin\Agenda@status_agenda');
Route::get('admin/agenda/kategori/{id}', 'App\Http\Controllers\Admin\Agenda@kategori');
Route::get('admin/agenda/jenis_agenda/{par1}', 'App\Http\Controllers\Admin\Agenda@jenis_agenda');
Route::get('admin/agenda/author/{par1}', 'App\Http\Controllers\Admin\Agenda@author');
Route::get('admin/agenda/tambah', 'App\Http\Controllers\Admin\Agenda@tambah');
Route::get('admin/agenda/edit/{par1}', 'App\Http\Controllers\Admin\Agenda@edit');
Route::get('admin/agenda/delete/{par1}', 'App\Http\Controllers\Admin\Agenda@delete');
Route::post('admin/agenda/tambah_proses', 'App\Http\Controllers\Admin\Agenda@tambah_proses');
Route::post('admin/agenda/edit_proses', 'App\Http\Controllers\Admin\Agenda@edit_proses');
Route::post('admin/agenda/proses', 'App\Http\Controllers\Admin\Agenda@proses');
Route::get('admin/agenda/add', 'App\Http\Controllers\Admin\Agenda@add');
// rekening
Route::get('admin/rekening', 'App\Http\Controllers\Admin\Rekening@index');
Route::get('admin/rekening/edit/{id}', 'App\Http\Controllers\Admin\Rekening@edit');
Route::post('admin/rekening/tambah', 'App\Http\Controllers\Admin\Rekening@tambah');
Route::post('admin/rekening/proses_edit', 'App\Http\Controllers\Admin\Rekening@proses_edit');
Route::get('admin/rekening/delete/{id}', 'App\Http\Controllers\Admin\Rekening@delete');
Route::post('admin/rekening/proses', 'App\Http\Controllers\Admin\Rekening@proses');
// kategori
Route::get('admin/kategori', 'App\Http\Controllers\Admin\Kategori@index');
Route::post('admin/kategori/tambah', 'App\Http\Controllers\Admin\Kategori@tambah');
Route::post('admin/kategori/edit', 'App\Http\Controllers\Admin\Kategori@edit');
Route::get('admin/kategori/delete/{id}', 'App\Http\Controllers\Admin\Kategori@delete');
// status
Route::get('admin/status_site', 'App\Http\Controllers\Admin\Status_site@index');
Route::post('admin/status_site/tambah', 'App\Http\Controllers\Admin\Status_site@tambah');
Route::post('admin/status_site/edit', 'App\Http\Controllers\Admin\Status_site@edit');
Route::get('admin/status_site/delete/{par1}', 'App\Http\Controllers\Admin\Status_site@delete');
// status
Route::get('admin/heading', 'App\Http\Controllers\Admin\Heading@index');
Route::post('admin/heading/tambah', 'App\Http\Controllers\Admin\Heading@tambah');
Route::post('admin/heading/edit', 'App\Http\Controllers\Admin\Heading@edit');
Route::get('admin/heading/delete/{par1}', 'App\Http\Controllers\Admin\Heading@delete');
// status
Route::get('admin/status_proyek', 'App\Http\Controllers\Admin\Status_proyek@index');
Route::post('admin/status_proyek/tambah', 'App\Http\Controllers\Admin\Status_proyek@tambah');
Route::post('admin/status_proyek/edit', 'App\Http\Controllers\Admin\Status_proyek@edit');
Route::get('admin/status_proyek/delete/{par1}', 'App\Http\Controllers\Admin\Status_proyek@delete');
// video
Route::get('admin/video', 'App\Http\Controllers\Admin\Video@index');
Route::get('admin/video/edit/{id}', 'App\Http\Controllers\Admin\Video@edit');
Route::post('admin/video/tambah', 'App\Http\Controllers\Admin\Video@tambah');
Route::post('admin/video/proses_edit', 'App\Http\Controllers\Admin\Video@proses_edit');
Route::get('admin/video/delete/{id}', 'App\Http\Controllers\Admin\Video@delete');
Route::post('admin/video/proses', 'App\Http\Controllers\Admin\Video@proses');
// kategori_proyek
Route::get('admin/kategori_proyek', 'App\Http\Controllers\Admin\Kategori_proyek@index');
Route::post('admin/kategori_proyek/tambah', 'App\Http\Controllers\Admin\Kategori_proyek@tambah');
Route::post('admin/kategori_proyek/edit', 'App\Http\Controllers\Admin\Kategori_proyek@edit');
Route::get('admin/kategori_proyek/delete/{par1}', 'App\Http\Controllers\Admin\Kategori_proyek@delete');
// kategori_download
Route::get('admin/kategori_download', 'App\Http\Controllers\Admin\Kategori_download@index');
Route::post('admin/kategori_download/tambah', 'App\Http\Controllers\Admin\Kategori_download@tambah');
Route::post('admin/kategori_download/edit', 'App\Http\Controllers\Admin\Kategori_download@edit');
Route::get('admin/kategori_download/delete/{par1}', 'App\Http\Controllers\Admin\Kategori_download@delete');
// kategori_galeri
Route::get('admin/kategori_galeri', 'App\Http\Controllers\Admin\Kategori_galeri@index');
Route::post('admin/kategori_galeri/tambah', 'App\Http\Controllers\Admin\Kategori_galeri@tambah');
Route::post('admin/kategori_galeri/edit', 'App\Http\Controllers\Admin\Kategori_galeri@edit');
Route::get('admin/kategori_galeri/delete/{par1}', 'App\Http\Controllers\Admin\Kategori_galeri@delete');
// kategori_staff
Route::get('admin/kategori_staff', 'App\Http\Controllers\Admin\Kategori_staff@index');
Route::post('admin/kategori_staff/tambah', 'App\Http\Controllers\Admin\Kategori_staff@tambah');
Route::post('admin/kategori_staff/edit', 'App\Http\Controllers\Admin\Kategori_staff@edit');
Route::get('admin/kategori_staff/delete/{id}', 'App\Http\Controllers\Admin\Kategori_staff@delete');
// kategori_agenda
Route::get('admin/kategori_agenda', 'App\Http\Controllers\Admin\Kategori_agenda@index');
Route::post('admin/kategori_agenda/tambah', 'App\Http\Controllers\Admin\Kategori_agenda@tambah');
Route::post('admin/kategori_agenda/edit', 'App\Http\Controllers\Admin\Kategori_agenda@edit');
Route::get('admin/kategori_agenda/delete/{par1}', 'App\Http\Controllers\Admin\Kategori_agenda@delete');
// kategori_akreditasi
Route::get('admin/kategori_akreditasi', 'App\Http\Controllers\Admin\Kategori_akreditasi@index');
Route::post('admin/kategori_akreditasi/tambah', 'App\Http\Controllers\Admin\Kategori_akreditasi@tambah');
Route::post('admin/kategori_akreditasi/edit', 'App\Http\Controllers\Admin\Kategori_akreditasi@edit');
Route::get('admin/kategori_akreditasi/delete/{par1}', 'App\Http\Controllers\Admin\Kategori_akreditasi@delete');
// galeri
Route::get('admin/galeri', 'App\Http\Controllers\Admin\Galeri@index');
Route::get('admin/galeri/cari', 'App\Http\Controllers\Admin\Galeri@cari');
Route::get('admin/galeri/status_galeri/{par1}', 'App\Http\Controllers\Admin\Galeri@status_galeri');
Route::get('admin/galeri/kategori/{par1}', 'App\Http\Controllers\Admin\Galeri@kategori');
Route::get('admin/galeri/tambah', 'App\Http\Controllers\Admin\Galeri@tambah');
Route::get('admin/galeri/edit/{id}', 'App\Http\Controllers\Admin\Galeri@edit');
Route::get('admin/galeri/delete/{par1}', 'App\Http\Controllers\Admin\Galeri@delete');
Route::post('admin/galeri/tambah_proses', 'App\Http\Controllers\Admin\Galeri@tambah_proses');
Route::post('admin/galeri/edit_proses', 'App\Http\Controllers\Admin\Galeri@edit_proses');
Route::post('admin/galeri/proses', 'App\Http\Controllers\Admin\Galeri@proses');
// staff
Route::get('admin/staff', 'App\Http\Controllers\Admin\Staff@index');
Route::get('admin/staff/cari', 'App\Http\Controllers\Admin\Staff@cari');
Route::get('admin/staff/status_staff/{par1}', 'App\Http\Controllers\Admin\Staff@status_staff');
Route::get('admin/staff/kategori/{par1}', 'App\Http\Controllers\Admin\Staff@kategori');
Route::get('admin/staff/detail/{id}', 'App\Http\Controllers\Admin\Staff@detail');
Route::get('admin/staff/tambah', 'App\Http\Controllers\Admin\Staff@tambah');
Route::get('admin/staff/edit/{id}', 'App\Http\Controllers\Admin\Staff@edit');
Route::get('admin/staff/delete/{id}', 'App\Http\Controllers\Admin\Staff@delete');
Route::post('admin/staff/tambah_proses', 'App\Http\Controllers\Admin\Staff@tambah_proses');
Route::post('admin/staff/edit_proses', 'App\Http\Controllers\Admin\Staff@edit_proses');
Route::post('admin/staff/proses', 'App\Http\Controllers\Admin\Staff@proses');
// site
Route::get('admin/site', 'App\Http\Controllers\Admin\Site@index');
Route::get('admin/site/cari', 'App\Http\Controllers\Admin\Site@cari');
Route::get('admin/site/status_site/{par1}', 'App\Http\Controllers\Admin\Site@status_site');
Route::get('admin/site/kategori/{par1}', 'App\Http\Controllers\Admin\Site@kategori');
Route::get('admin/site/detail/{par1}', 'App\Http\Controllers\Admin\Site@detail');
Route::get('admin/site/tambah', 'App\Http\Controllers\Admin\Site@tambah');
Route::get('admin/site/edit/{par1}', 'App\Http\Controllers\Admin\Site@edit');
Route::get('admin/site/status/{par1}', 'App\Http\Controllers\Admin\Site@status');
Route::get('admin/site/delete/{par1}', 'App\Http\Controllers\Admin\Site@delete');
Route::post('admin/site/tambah_proses', 'App\Http\Controllers\Admin\Site@tambah_proses');
Route::post('admin/site/edit_proses', 'App\Http\Controllers\Admin\Site@edit_proses');
Route::post('admin/site/proses', 'App\Http\Controllers\Admin\Site@proses');
// proyek
Route::get('admin/proyek', 'App\Http\Controllers\Admin\Proyek@index');
Route::get('admin/proyek/cari', 'App\Http\Controllers\Admin\Proyek@cari');
Route::get('admin/proyek/status_proyek/{par1}', 'App\Http\Controllers\Admin\Proyek@status_proyek');
Route::get('admin/proyek/kategori/{par1}', 'App\Http\Controllers\Admin\Proyek@kategori');
Route::get('admin/proyek/detail/{par1}', 'App\Http\Controllers\Admin\Proyek@detail');
Route::get('admin/proyek/tambah', 'App\Http\Controllers\Admin\Proyek@tambah');
Route::get('admin/proyek/edit/{par1}', 'App\Http\Controllers\Admin\Proyek@edit');
Route::get('admin/proyek/status/{par1}', 'App\Http\Controllers\Admin\Proyek@status');
Route::get('admin/proyek/delete/{par1}', 'App\Http\Controllers\Admin\Proyek@delete');
Route::post('admin/proyek/tambah_proses', 'App\Http\Controllers\Admin\Proyek@tambah_proses');
Route::post('admin/proyek/edit_proses', 'App\Http\Controllers\Admin\Proyek@edit_proses');
Route::post('admin/proyek/proses', 'App\Http\Controllers\Admin\Proyek@proses');
// akreditasi
Route::get('admin/akreditasi', 'App\Http\Controllers\Admin\Akreditasi@index');
Route::get('admin/akreditasi/cari', 'App\Http\Controllers\Admin\Akreditasi@cari');
Route::get('admin/akreditasi/status_akreditasi/{par1}', 'App\Http\Controllers\Admin\Akreditasi@status_akreditasi');
Route::get('admin/akreditasi/kategori/{par1}', 'App\Http\Controllers\Admin\Akreditasi@kategori');
Route::get('admin/akreditasi/detail/{par1}', 'App\Http\Controllers\Admin\Akreditasi@detail');
Route::get('admin/akreditasi/tambah', 'App\Http\Controllers\Admin\Akreditasi@tambah');
Route::get('admin/akreditasi/edit/{par1}', 'App\Http\Controllers\Admin\Akreditasi@edit');
Route::get('admin/akreditasi/delete/{par1}', 'App\Http\Controllers\Admin\Akreditasi@delete');
Route::post('admin/akreditasi/tambah_proses', 'App\Http\Controllers\Admin\Akreditasi@tambah_proses');
Route::post('admin/akreditasi/edit_proses', 'App\Http\Controllers\Admin\Akreditasi@edit_proses');
Route::post('admin/akreditasi/proses', 'App\Http\Controllers\Admin\Akreditasi@proses');
// download
Route::get('admin/download', 'App\Http\Controllers\Admin\Download@index');
Route::get('admin/download/cari', 'App\Http\Controllers\Admin\Download@cari');
Route::get('admin/download/status_download/{par1}', 'App\Http\Controllers\Admin\Download@status_download');
Route::get('admin/download/kategori/{par1}', 'App\Http\Controllers\Admin\Download@kategori');
Route::get('admin/download/tambah', 'App\Http\Controllers\Admin\Download@tambah');
Route::get('admin/download/edit/{par1}', 'App\Http\Controllers\Admin\Download@edit');
Route::get('admin/download/unduh/{par1}', 'App\Http\Controllers\Admin\Download@unduh');
Route::get('admin/download/delete/{par1}', 'App\Http\Controllers\Admin\Download@delete');
Route::post('admin/download/tambah_proses', 'App\Http\Controllers\Admin\Download@tambah_proses');
Route::post('admin/download/edit_proses', 'App\Http\Controllers\Admin\Download@edit_proses');
Route::post('admin/download/proses', 'App\Http\Controllers\Admin\Download@proses');

/* END BACK END*/
