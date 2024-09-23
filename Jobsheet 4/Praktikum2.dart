void main() {
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  names1.add('Denny Malik Ibrahim');
  names1.add('2241720107'); 

  names2.addAll({'Denny Malik Ibrahim', '2241720107'});

  print(names1);
  print(names2);
  // print(names3);

  
}

