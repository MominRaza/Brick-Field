class Contact {
  String id;
  String name;
  String address;
  String work;
  String number;

  Contact({
    this.id,
    this.name,
    this.address,
    this.work,
    this.number,
  });
}

List<Contact> contacts = [
  Contact(
    id: 'cont1',
    name: 'Momin Raza',
    address: 'Shishgarh',
    work: 'Engineer',
    number: '7302606166',
  ),
  Contact(
    id: 'cont2',
    name: 'Zaid Raza',
    address: 'Shishgarh',
    work: 'Engineer',
    number: '7302606166',
  ),
  Contact(
    id: 'cont3',
    name: 'Saif Raza',
    address: 'Shishgarh',
    work: 'Engineer',
    number: '7302606166',
  ),
  Contact(
    id: 'cont4',
    name: 'Islam Raza',
    address: 'Shishgarh',
    work: 'Engineer',
    number: '7302606166',
  ),
];
