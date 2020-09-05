import 'package:khinkal_metri/configs/configs.dart';
import 'package:khinkal_metri/models/models.dart';
// import 'package:firebase_storage/firebase_storage.dart';

class AllData {
  static List<RestaurantModel> restaurantsData = [
    RestaurantModel(
      id: '001',
      name: 'ლოლიტა',
      imgUrl:
          'https://firebasestorage.googleapis.com/v0/b/khinkalmetri.appspot.com/o/lolita.png?alt=media&token=b1bb5226-ec56-495b-8bab-4417b8c9f5d7',
      burgerRestaurant: true,
    ),
    RestaurantModel(
      id: '002',
      name: 'ფასანაური',
      imgUrl:
          'https://firebasestorage.googleapis.com/v0/b/khinkalmetri.appspot.com/o/fasanauri.png?alt=media&token=4a51d6c3-67bb-4b5a-a3b8-4fe9eadc16da',
      khinkaliRestaurant: true,
    ),
    RestaurantModel(
      id: '003',
      name: 'მაჭახელა',
      imgUrl:
          'https://firebasestorage.googleapis.com/v0/b/khinkalmetri.appspot.com/o/machakhela.png?alt=media&token=603a448e-c52a-4e5e-aa91-559cc7a9ca61',
      khinkaliRestaurant: true,
    ),
    RestaurantModel(
      id: '004',
      name: '9 მთა',
      imgUrl:
          'https://firebasestorage.googleapis.com/v0/b/khinkalmetri.appspot.com/o/9mta.png?alt=media&token=f67c7b97-ff4e-42d3-a807-ec52b8fd5cd0',
      khinkaliRestaurant: true,
      burgerRestaurant: true,
    ),
    RestaurantModel(
      id: '005',
      name: 'მეგრული სხლი',
      imgUrl:
          'https://firebasestorage.googleapis.com/v0/b/khinkalmetri.appspot.com/o/megruli%20sakhli.png?alt=media&token=39ec2ec5-6701-4ac6-afc8-2c26299e6273',
      khinkaliRestaurant: true,
      burgerRestaurant: true,
    ),
    RestaurantModel(
      id: '006',
      name: 'თავადური',
      imgUrl:
          'https://firebasestorage.googleapis.com/v0/b/khinkalmetri.appspot.com/o/tavaduri.jpg?alt=media&token=820bd1f9-a859-4e70-9b0a-27fbce7335e1',
      khinkaliRestaurant: true,
    ),
    RestaurantModel(
      id: '007',
      name: 'ქართული ღვინის სახლი',
      imgUrl:
          'https://firebasestorage.googleapis.com/v0/b/khinkalmetri.appspot.com/o/qartuli%20gvinis%20sakhli.png?alt=media&token=161126a2-50d1-480b-959b-7f94fd089f7b',
      khinkaliRestaurant: true,
    ),
    RestaurantModel(
      id: '008',
      name: 'მაკშაურმა',
      imgUrl:
          'https://firebasestorage.googleapis.com/v0/b/khinkalmetri.appspot.com/o/makshaurma.png?alt=media&token=56a9a3e4-f020-475a-b6bc-3817a01a7297',
      shaurmaRestaurant: true,
    ),
  ];

  static List<RatingModel> ratings = [
    RatingModel(
      ownerId: '001',
      ownerName: 'მეტიჩარა გოგია',
      restaurantId: '001',
      rating: 4,
      comment: 'ხორცი იყო რა, მარა აი ძმაო ცომია რაღაც სასწაული.',
      date: '15/08/2020',
      type: 'ხინკალი',
    ),
    RatingModel(
      ownerId: '001',
      ownerName: 'ბურატინოს ცხვირი',
      restaurantId: '001',
      rating: 5,
      comment: 'საუკეთესოა თბილისში უდაოდ',
      date: '15/08/2020',
      type: 'ხინკალი',
    ),
    RatingModel(
      ownerId: '001',
      ownerName: 'ვეშაბის ღიპი ზამთარში',
      restaurantId: '001',
      rating: 1,
      comment: 'მსგავსი სიბანძე პირში თუ ჩამედოს პროსტა',
      date: '15/08/2020',
      type: 'ხინკალი',
    ),
    RatingModel(
      ownerId: '001',
      ownerName: 'არ უყვარს ჭამა',
      restaurantId: '001',
      rating: 5,
      comment: '',
      date: '15/08/2020',
      type: 'ხინკალი',
    ),
    RatingModel(
      ownerId: '001',
      ownerName: 'ლოლიტას დირექტორი',
      restaurantId: '001',
      rating: 5,
      comment:
          'საუკეთესოა რაც კი თბილისში გამისინჯავს. ერთი ბებიაჩემის მოხვეული მირჩევნია თორე სხვა ყველას ნამდვილად ჯობია...',
      date: '15/08/2020',
      type: 'ხინკალი',
    ),
    RatingModel(
      ownerId: '002',
      ownerName: 'ვეშაბის ღიპი ზამთარში',
      restaurantId: '001',
      rating: 1,
      comment: 'მსგავსი სიბანძე პირში თუ ჩამედოს პროსტა',
      date: '15/08/2020',
      type: 'ხინკალი',
    ),
    RatingModel(
      ownerId: '002',
      ownerName: 'არ უყვარს ჭამა',
      restaurantId: '002',
      rating: 5,
      comment: '',
      date: '15/08/2020',
      type: 'ხინკალი',
    ),
    RatingModel(
      ownerId: '002',
      ownerName: 'ლოლიტას დირექტორი',
      restaurantId: '002',
      rating: 5,
      comment:
          'საუკეთესოა რაც კი თბილისში გამისინჯავს. ერთი ბებიაჩემის მოხვეული მირჩევნია თორე სხვა ყველას ნამდვილად ჯობია...',
      date: '15/08/2020',
      type: 'ხინკალი',
    ),
    RatingModel(
      ownerId: '001',
      ownerName: 'მეტიჩარა გოგია',
      restaurantId: '002',
      rating: 4,
      comment: 'ხორცი იყო რა, მარა აი ძმაო ცომია რაღაც სასწაული.',
      date: '15/08/2020',
      type: 'შაურმა',
    ),
    RatingModel(
      ownerId: '001',
      ownerName: 'ბურატინოს ცხვირი',
      restaurantId: '001',
      rating: 5,
      comment: 'საუკეთესოა თბილისში უდაოდ',
      date: '15/08/2020',
      type: 'შაურმა',
    ),
    RatingModel(
      ownerId: '001',
      ownerName: 'ვეშაბის ღიპი ზამთარში',
      restaurantId: '002',
      rating: 1,
      comment: 'მსგავსი სიბანძე პირში თუ ჩამედოს პროსტა',
      date: '15/08/2020',
      type: 'შაურმა',
    ),
    RatingModel(
      ownerId: '001',
      ownerName: 'არ უყვარს ჭამა',
      restaurantId: '002',
      rating: 5,
      comment: '',
      date: '15/08/2020',
      type: 'შაურმა',
    ),
    RatingModel(
      ownerId: '001',
      ownerName: 'ლოლიტას დირექტორი',
      restaurantId: '003',
      rating: 5,
      comment:
          'საუკეთესოა რაც კი თბილისში გამისინჯავს. ერთი ბებიაჩემის მოხვეული მირჩევნია თორე სხვა ყველას ნამდვილად ჯობია...',
      date: '15/08/2020',
      type: 'შაურმა',
    ),
    RatingModel(
      ownerId: '002',
      ownerName: 'ვეშაბის ღიპი ზამთარში',
      restaurantId: '003',
      rating: 1,
      comment: 'მსგავსი სიბანძე პირში თუ ჩამედოს პროსტა',
      date: '15/08/2020',
      type: 'შაურმა',
    ),
    RatingModel(
      ownerId: '002',
      ownerName: 'არ უყვარს ჭამა',
      restaurantId: '003',
      rating: 5,
      comment: '',
      date: '15/08/2020',
      type: 'შაურმა',
    ),
    RatingModel(
      ownerId: '002',
      ownerName: 'ლოლიტას დირექტორი',
      restaurantId: '003',
      rating: 5,
      comment: 'კაი ხორცია',
      date: '15/08/2020',
      type: 'შაურმა',
    ),
  ];
}
