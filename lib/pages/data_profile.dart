class dataProfile{
  String ? name, image, email, phone, address;

  dataProfile({this.name, this.image, this.email, this.phone, this.address});
}

final List<dataProfile> items = [
    dataProfile(
      name: 'Sehun',
      image: 'assets/images/sehun.png',
      email: 'OhSehun@gmail.com',
      phone: '+821023456789',
      address: 'Seoul, Korea'),
];