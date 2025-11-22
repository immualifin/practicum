# Catatan Perubahan (Changelog)

## [Date] - Fix Penambahan Post CRUD

### 🔧 **Bug Fixes**

1. **Fixed Field `createdAt` Parsing Error**
   - **Masalah**: JSONPlaceholder tidak mengembalikan field `createdAt` saat create post, causing `DateTime.parse()` error
   - **Lokasi**: `lib/main.dart:27-30`
   - **Solusi**: Tambah null check, gunakan `DateTime.now()` jika `createdAt` tidak ada
   - **Before**: `createdAt: DateTime.parse(json['createdAt'])`
   - **After**: `createdAt: json['createdAt'] != null ? DateTime.parse(json['createdAt']) : DateTime.now()`

2. **Fixed Missing `createdAt` in Request Body**
   - **Masalah**: Request body tidak memiliki field `createdAt`
   - **Lokasi**: `lib/main.dart:91`
   - **Solusi**: Tambah `'createdAt': DateTime.now().toIso8601String()` ke request body

3. **Fixed PopupMenu Logic Error**
   - **Masalah**: Menu 'Update' malah memanggil fungsi delete
   - **Lokasi**: `lib/main.dart:404-412`
   - **Solusi**: Perbaiki logika conditional:
     - `'update'` → panggil `showUpdatePostDialog()`
     - `'delete'` → panggil `showDeleteConfirmationDialog()`

### ✨ **Improvements**

4. **Added Success Feedback**
   - **Lokasi**: `lib/main.dart:105-110`
   - **Fitur**: Snackbar hijau dengan pesan "Post berhasil ditambahkan!" saat post berhasil dibuat

5. **Added Debug Logging**
   - **Lokasi**: `lib/main.dart:101, 112-113, 119`
   - **Fitur**: Console logs untuk troubleshooting:
     - `Response data` - Melihat response dari server
     - `Status code` - HTTP status code saat error
     - `Response body` - Detail error response
     - `Error` - Exception details

### 📋 **Summary**
Perubahan ini memperbaiki masalah utama penyebab gagal menambahkan post:
- Parsing error akibat missing `createdAt` field
- Logic error pada menu popup
- Menambah feedback visual dan debugging untuk pengalaman pengguna yang lebih baik

### 🚀 **Status**: FIXED
Aplikasi sekarang seharusnya dapat menambahkan post dengan normal.