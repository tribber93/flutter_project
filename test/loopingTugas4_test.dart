import 'dart:io';

void main() {
  stdout.write('------Soal no.1------ \n');
  for (int i = 1; i <= 5; i++) {
    for (int j = 4; j >= i; j--) {
      stdout.write(' ');
    }
    for (int k = 1; k <= i; k++) {
      stdout.write('*');
    }
    stdout.write("\n");
  }

  stdout.write('------Soal no.2------ \n');
  for (int i = 1; i <= 5; i++) {
    for (int j = 5; j >= i; j--) {
      stdout.write('*');
    }
    stdout.write("\n");
  }

  stdout.write('------Soal no.3------ \n');
  for (int i = 1; i <= 5; i++) {
    for (int j = 0; j <= i - 1; j++) {
      stdout.write(' ');
    }
    for (int k = 5; k >= i; k--) {
      stdout.write('*');
    }
    stdout.write("\n");
  }

  stdout.write('------Soal no.4------ \n');
  for (int i = 1; i <= 3; i++) {
    for (int j = 2; j >= i; j--) {
      stdout.write(' ');
    }
    for (int k = 1; k <= i; k++) {
      stdout.write('*');
    }
    for (int l = 1; l <= i - 1; l++) {
      stdout.write('*');
    }
    stdout.write("\n");
  }
  for (int i = 2; i >= 1; i--) {
    for (int j = 2; j >= i; j--) {
      stdout.write(' ');
    }
    for (int k = 1; k < i * 2; k++) {
      stdout.write('*');
    }
    stdout.write("\n");
  }
}
