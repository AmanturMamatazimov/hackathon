class HotelListData {
  HotelListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
    this.dist = 1.8,
    this.reviews = 80,
    this.rating = 4.5,
    this.perNight = 180,
  });

  String imagePath;
  String titleTxt;
  String subTxt;
  double dist;
  double rating;
  int reviews;
  int perNight;

  static List<HotelListData> hotelList = <HotelListData>[
    HotelListData(
      imagePath: 'assets/hotel/hotel_1.png',
      titleTxt: 'Grand Royal Hotel',
      subTxt: 'Бишкек, Ахунбаева 98',
      dist: 2.0,
      reviews: 80,
      rating: 4.4,
      perNight: 180,
    ),
    HotelListData(
      imagePath: 'assets/hotel/hotel_2.png',
      titleTxt: 'Queen Hotel',
      subTxt: 'Бишкек, Горький 26',
      dist: 4.0,
      reviews: 74,
      rating: 4.5,
      perNight: 200,
    ),
    HotelListData(
      imagePath: 'assets/hotel/hotel_3.png',
      titleTxt: 'Navat чайхана',
      subTxt: 'Бишкек, Киевская',
      dist: 3.0,
      reviews: 62,
      rating: 4.0,
      perNight: 60,
    ),
    HotelListData(
      imagePath: 'assets/hotel/hotel_4.png',
      titleTxt: 'Айнекстан',
      subTxt: 'Бишкек, Гоголя 10',
      dist: 7.0,
      reviews: 90,
      rating: 4.4,
      perNight: 170,
    ),
    HotelListData(
      imagePath: 'assets/hotel/hotel_5.png',
      titleTxt: 'Фаиза чайхана',
      subTxt: 'Бишкек, Шевченко 55',
      dist: 2.0,
      reviews: 240,
      rating: 4.5,
      perNight: 200,
    ),
  ];
}
