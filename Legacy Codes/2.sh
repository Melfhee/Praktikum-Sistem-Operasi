echo "Pemprograman Mengubah Waktu ";
echo "Masukkan Menit: ";
read menit;

let hari=$menit/1440
let sisa=$menit%1440
let jam=$sisa/60
let sisa=$sisa%60

if [ $menit -gt 1440 ]
then
echo -e "Hari: $hari\nJam : $jam\nMenit : $sisa "
elif [ $menit -gt 60 ]
then
echo -e "Jam : $jam\n Menit : $sisa"
elif [ $menit -lt 60 ]
then
echo "Menit :$sisa"
fi

