void main() {
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

print(gifts);
print(nobleGases);

var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';

mhs1.addAll({
  'nama': 'Denny Malik Ibrahim',
  'NIM': '2241720107',
});

mhs2.addAll({
  1:'Denny Malik Ibrahim',
  3:'2241720107',
});

gifts.addAll({
  'nama': 'Denny Malik Ibrahim',
  'NIM': '2241720107',
});

nobleGases.addAll({
  1:'Denny Malik Ibrahim',  
  3:'2241720107',
});

print(mhs1);
print(mhs2);

print(gifts);
print(nobleGases);


}