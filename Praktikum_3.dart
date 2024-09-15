void main() {
  for (int Index = 10; Index < 27; Index++) {
    if (Index == 21) {
      break;
    } else if (Index == 17) {
      continue;
    }
    print(Index);
  }
}
