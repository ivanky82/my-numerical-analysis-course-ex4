% Tutorial Minggu ke-3 
% MENCARI SOLUSI SISTEM PERSAMAAN LINIER Ax=b
% 
% File ini akan memanggil beberapa kode dan anda harus melengkapi kode tersebut
% untuk mencari solusi SPL tersebut
% 
% File latihan :    
%     1. gaussElimination.m
%     2. backwardSubstitution.m
%     3. faktorisasiLU.m
% 	  4. forwardSubstitution.m
%     
% Pada latihan ini, anda tidak perlu mengotak-atik code pada file ini 
% anda cukup membuat kode program pada file-file diatas.
% 
% 
%==========================================================================
% PART 1: ELIMINASI GAUSS
% Buatlah sebuah fungsi yang diberi nama gaussElimination.m yang akan mengubah
% matriks A menjadi matriks segitiga atas

clc;
clear;
close all;
A = [4 2 3 5 1; -3 4 5 8 -1; 4 5 6 7 8; -5 -2 0 4 1; 9 0 1 0 3];
b = [3;-1;0;-12;7];
fprintf('Part 1 : Melakukan eliminasi Gauss pada matriks A dan b \n');
[A1 b1]=gaussElimination(A,b)
fprintf('Kode yang anda kerjakan adalah benar jika vektor b1 yang anda dapatkan adalah \n');
fprintf('b1 = 3.0000 1.2500 -3.6818 -20.2857 10.4299 \n');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 2: SUBSTITUSI MUNDUR
% Buatlah sebuah fungsi yang diberi nama backwardSubstitution.m yang akan mencari
% solusi SPL Ax=b

fprintf('Part 2 : Mencari solusi SPL dengan menggunakan algoritma substitusi mundur \n');
fprintf('dan memanfaatkan matriks segitiga atas yang telah didapatkan di bagian sebelumnya \n');
x = backwardSubstitution(A1,b1)
fprintf('Kode yang anda kerjakan adalah benar jika solusi yang anda dapatkan adalah \n');
fprintf('x = [1 1 1 -1 -1] \n')
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 3: FAKTORISASI LU
% Buatlah sebuah fungsi yang diberi nama faktorisasiLU.m yang akan mencari
% matriks segitiga bawah L dan matriks segitiga atas U

fprintf('Part 3 : Mencari faktorisasi LU dari matriks A \n');
[L U] = faktorisasiLU(A)
fprintf('Memeriksa kembali apakah L x U = A \n');
if isequal(L*U,A)
	fprintf('Kode yang anda kerjakan adalah benar \n');	
else
	fprintf('Kode yang anda kerjakan adalah masih salah \n');
end
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 4: SUBSTITUSI MAJU untuk faktorisasi LU
% Buatlah sebuah fungsi yang diberi nama forwardSubstitution.m 

fprintf('Part 4 : Mencari solusi SPL L y = b dengan menggunakan algoritma substitusi maju \n');
fprintf('karena L adalah matriks segitiga bawah yang telah didapatkan di bagian sebelumnya \n');
y = forwardSubstitution(L,b)
fprintf('Kode yang anda kerjakan adalah benar jika solusi yang anda dapatkan adalah \n');
fprintf('y = 3.0000 1.2500 -3.6818 -20.2857 10.4299 \n');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 5: SUBSTITUSI MUNDUR untuk faktorisasi LU
% Memanfaatkan fungsi backwardSubstitution.m yang telah dibuat untuk mencari solusi
% SPL U x = b. Solusi SPL ini merupakan solusi SPL Ax=b.Anda tidak perlu membuat lagi
% kode program yang baru.

fprintf('Part 5 : Mencari solusi SPL U x = y dengan menggunakan algoritma substitusi mundur \n');
fprintf('dimana U adalah matriks segitiga atas yang didapatkan dari proses faktorisasi. \n');
fprintf('Program untuk mencari solusi menggunakan algoritma yang sama seperti pada part 2. \n');
x = backwardSubstitution(U,y)
fprintf('Kode yang anda kerjakan adalah benar jika solusi yang anda dapatkan adalah \n');
fprintf('x = [1 1 1 -1 -1] \n')
fprintf('Program selesai. Tekan tombol apapun untuk lanjut\n\n');
pause;

% ==============================AKHIR KODE================================
% TIDAK MELAKUKAN PENGETIKAN KODE DI BAWAH GARIS INI AGAR LEBIH RAPI DALAM
% MELAKUKAN KODING DAN LEBIH DIMENGERTI.

% BONUS : 
% 1. COBALAH UNTUK MENCOBA MATRIKS YANG LAIN ATAU VEKTOR b YANG LAIN 
% 
% 2. COBALAH UNTUK MENGGANTI ALGORITMA ELIMINASI GAUSS DI ATAS DENGAN ALGORITMA ELIMINASI GAUSS
%	 DENGAN PIVOTING


