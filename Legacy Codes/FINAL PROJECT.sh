 #!/bin/bash
lagi='y'
while  [ $lagi == 'y' ] || [ $lagi == 'Y' ];
do
   clear
   echo "================================================";
   echo "||    PROGRAM YANG DAPAT MEMBANTU ANDA        ||";
   echo "================================================";
   echo "1. Mengelolah Data     ";
   echo "2. Menjalankan Program Menghitung Bangun Ruang ";
   echo "3. Hak Akses Data ";
   echo "4. KELUAR       ";
   echo "================================================";
   read -p "Pilihan anda [1-4] :" pil;
case $pil in
1)
clear
    echo "=======================================";
    echo "||     PROGRAM PENGELOLAH DATA       ||";
    echo "=======================================";
    echo "1. Lihat Daftar Data      ";
    echo "";
    echo "2. Membuat Folder Direktori Baru";
    echo "";
    echo "3. Hapus Data ";
    echo "=======================================";
    echo -n "Pilihan Anda: ";
    read data
        if [ $data -eq 1 ];    
            then
                clear
                echo "===============================================================================";
                echo "                              DAFTAR DATAMU NIH ";
                echo "===============================================================================";
                ls
       elif [ $data -eq 2 ]; 
            then
                clear
                echo "===============================================================================";
                echo -n "Masukkan Nama Folder: "
                read folder
                echo "===============================================================================";
                mkdir $folder
                echo "Selamat Folder Anda telah di buat"
                echo "===============================================================================";
                echo "                              DAFTAR DATAMU NIH ";
                echo "===============================================================================";
                ls
       elif [ $data -eq 3 ]; 
            then 
                clear
                echo "===============================================================================";
                echo "                              DAFTAR DATAMU NIH ";
                echo "===============================================================================";
                ls
                echo "===============================================================================";
                echo -n "Masukkan Data yang ingin di hapus: "
                read nama
                rmdir $nama
                clear
                echo "===============================================================================";
                echo " Datanya udah di hapus tuh ";
                echo "===============================================================================";
                ls
       fi
       ;;
2)
clear
    echo "======================================="
    echo "            Daftar Program  ";
    echo "=======================================";
    echo "1. Luas Persegi Panjang"
    echo "2. Luas Segitiga"
    echo "3. Luas Permukaan Kubus"
    echo "4. Luas Permukaan Balok"
    echo "5. Volume Kubus"
    echo "6. Volume Balok"
    echo "=======================================";
    echo -n "Pilih Menu(1-6): "
    read pilih
    if [ $pilih -eq 1 ]
    then
    echo "=========================================";
    echo -n "Masukkan Panjang Persegi: "
    read p
    echo -n "Masukkan Lebar Persegi: "
    read l
    echo "=========================================";
    luas=`expr $p \* $l`
    echo "||     Luas Persegi Panjang: $luas     ||"
    echo "=========================================";

    elif [ $pilih -eq 2 ]
    then
    echo "=========================================";
    echo -n "Masukkan Alas: "
    read a
    echo -n "Masukkan Tinggi: "
    read t
    echo "=========================================";
    luas=`expr $a \* $t \* 1 / 2`
    echo "||      Luas Segitiga: $luas"
    echo "=========================================";

    elif [ $pilih -eq 3 ]
    then
    echo -n "Masukkan Panjang Rusuk: "
    read s
    luas=`expr 6 \* $s \* $s`
    echo "Luas Permukaan Kubus: $luas"

    elif [ $pilih -eq 4 ]
    then
    echo "=========================================";
    echo -n "Masukkan Panjang: "
    read p
    echo -n "Masukkan Lebar: "
    read l
    echo -n "Masukkan Tinggi: "
    read t
    echo "=========================================";
    pl=`expr $p \* $l`
    pt=`expr $p \* $t`
    lt=`expr $l \* $t`
    tambah=`expr $pl + $pt + $lt`
    luas=`expr 2 \* $tambah`
    echo "Luas Permukaan Balok: $luas"
    echo "=========================================";

    elif [ $pilih -eq 5 ]
    then
    echo -n "Masukkan Panjang Rusuk: "
    read s
    volume=`expr $s \* $s \* $s`
    echo "Volume Kubus: $volume"

    elif [ $pilih -eq 6 ]
    then
    echo "=========================================";
    echo -n "Masukkan Panjang: "
    read p
    echo -n "Masukkan Lebar: "
    read l
    echo -n "Masukkan Tinggi: "
    read t
    echo "=========================================";
    volume=`expr $p \* $l \* $t`
    echo "Volume Balok: $volume"
    fi
    ;;
 3)
 clear
      echo "=====================================================";
      echo "  Ini Daftar Data Yang Ada di Lepimu ya  "
      ls -l
      echo "=====================================================";
      echo "Berkas mana nih yang mau diubah hak akses nya?"
      read ubah_akses
      echo "====================================================="
      echo "           Daftar hak akses  ";
      echo "=====================================================";
      echo "1. Read-write-executble(-rwxrwxrwx)"
      echo "2. Read-write(-rwxrw-rw-)"
      echo "3. Read(-rwx-r--r--)"
      echo "=====================================================";
      echo -n "Pilih (1-3): "
      read pilih
      echo "=====================================================";
      if [ $pilih -eq 1 ]
      then
      clear
      echo "Oke anda memilih $ubah_akses"
      sudo chmod 777 $ubah_akses
      clear

      echo "Udah di Ubah nih. Cek deh!"
      echo "=====================================================";
      ls -l

      elif [ $pilih -eq 2 ]
      then
      echo "Oke anda memilih $ubah_akses"
      sudo chmod 766 $ubah_akses
      clear

      echo "Udah di Ubah nih. Cek deh!"
      echo "=====================================================";
      ls -l
      elif [ $pilih -eq 3 ]
      then
      echo "Oke anda memilih $ubah_akses"
      sudo chmod 744 $ubah_akses
      clear
      echo "Udah di Ubah nih. Cek deh!"
      echo "=====================================================";
      ls -l
     fi
      ;;
 4)
       exit 0
;;
esac
echo -n "Kembali ke menu utama (y/t) :";
read lagi; 
done
