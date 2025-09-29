import 'dart:io';

double _readNumber(String label)
{
  while(true){
    stdout.write('$label: ');
    final input = stdin.readLineSync();
    if(input == null) continue;
    final value = double.tryParse(input.trim());
    if (value != null) return value;
    print('Input Tidak Valid. Tolong Masukkan Angka');
  }
}

void main()
{
  while(true)
  {
    print('\nKALKULATOR\n');
    print('1) Tambah');
    print('2) kurang');
    print('3) Kali');
    print('4) Bagi');
    print('5) keluar');
    stdout.write('\nPilih 1-5 : ');
    final pilih = stdin.readLineSync()?.trim();

    if (pilih == '5'){
      print('\nSelamat Tinggal.');
      return;
    }


    final a = _readNumber('\nMasukkan Angka Pertama');
    final b = _readNumber('Masukkan Angka Kedua');

    switch(pilih)
    {
      case '1':
        double hasil = tambah(a, b);
        print('\n$a + $b = $hasil');
      break;

      case '2':
        double hasil = kurang(a, b);
        print('\n$a - $b = $hasil');
      break;

      case '3':
        double hasil = kali(a, b);
        print('\n$a x $b = $hasil');
      break;

      case '4':
        double hasil = bagi(a, b);
        if (b == 0){
          print('\n$a Tidak Bisa Dibagi Dengan $b');
        } else {
        print('\n$a : $b = $hasil');
        }
      break;

      default:
        print('\nAnda Tidak Memilih Menu.');
      break;
    }
  }
}

double tambah(double a, double b) => a + b;
double kurang(double a, double b) => a - b;
double kali(double a, double b) => a * b;
double bagi(double a, double b) => a / b;