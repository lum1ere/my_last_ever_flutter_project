import 'package:decimal/decimal.dart';
import 'package:market_of_ment/entitiy/item.dart';

class ExampleSource {
  static List<Item> getExampleItems() {
    List<Item> items = [
      Item.builder()
          .setId(0)
          .setTitle('Title 1')
          .setDesc('''
Donsectetur adipiscing elit. Proin sodales, magna ac volutpat faucibus, orci orci tempor augue, a interdum est risus nec est. Curabitur porta aliquam iaculis. Nam nec feugiat mi, eu tempus arcu. Phasellus sagittis ullamcorper nisi, nec varius lorem commodo at. Aliquam quis ipsum efficitur, luctus quam ut, eleifend leo. Curabitur blandit ornare quam ut volutpat. Curabitur cursus nisi eros, eu malesuada augue maximus sed. Mauris risus mauris, pharetra ut maximus id, placerat ac magna.

Aenean vitae enim vitae lectus sollicitudin lobortis. Nam vel tincidunt sem, sed sollicitudin magna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed finibus facilisis libero mollis feugiat. Nunc id venenatis ligula. Vivamus viverra turpis lectus, vitae mollis mauris lacinia in. Duis vel tellus molestie, rhoncus metus quis, auctor elit. Nulla consequat lectus mi, ut ornare est pretium non.

Nam et rhoncus purus. Cras et venenatis magna. Suspendisse in suscipit justo, in euismod elit. Nullam nibh turpis, elementum id lorem ac, porta auctor velit. In suscipit lacus id tincidunt pretium. Nam id dapibus sem, vitae posuere diam. Proin in volutpat dui. Donec accumsan ipsum elit, pretium iaculis mauris placerat blandit. Maecenas mollis, neque sed ultricies pulvinar, libero enim vestibulum nunc, dapibus egestas massa erat ac lorem. Morbi quis tortor ut neque suscipit mollis. Praesent at molestie nisl, ultrices egestas dui. Etiam faucibus mollis interdum.

Sed accumsan urna non vulputate feugiat. Donec at molestie diam, sit amet malesuada erat. Etiam posuere bibendum dolor. Aliquam erat volutpat. Donec rhoncus sem turpis, nec bibendum felis semper ac. Quisque eget enim nec eros auctor auctor finibus finibus nisi. Nullam viverra tortor nec molestie lobortis. Quisque quis consectetur lectus. Donec iaculis purus eu ex ornare efficitur. Nam eget lectus a velit maximus varius sed et enim. Nullam eleifend est ut ante luctus consequat.

Curabitur tellus urna, pretium scelerisque sodales et, congue semper lacus. Quisque a nulla et eros fringilla lacinia quis et nisl. Phasellus non lectus enim. Phasellus a nisi molestie, aliquet neque varius, sagittis diam. Sed nulla eros, tincidunt vel pharetra nec, vehicula vel justo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent vulputate sollicitudin velit, id scelerisque est commodo eu. Donec odio nisl, dignissim quis nibh fringilla, fermentum gravida neque. Nullam sit amet justo sodales est vestibulum porttitor vel et velit. Suspendisse vulputate magna sem, vel mollis massa feugiat vel. Proin convallis imperdiet odio. Pellentesque venenatis ante ex, eget ornare erat imperdiet eu. Nunc sodales velit nec risus varius, sit amet tempor nibh dictum. Nullam egestas metus eget tortor convallis, pulvinar sollicitudin odio congue. Donec sodales ornare justo non viverra.
          ''')
          .setImagePath('https://cdn.britannica.com/22/215522-050-8315BB78/green-grass-close-up.jpg')
          .setStats('...')
          .setSliderImagePaths([
        'https://cdn.britannica.com/22/215522-050-8315BB78/green-grass-close-up.jpg',
        'https://cdn.britannica.com/22/215522-050-8315BB78/green-grass-close-up.jpg',
        'https://cdn.britannica.com/22/215522-050-8315BB78/green-grass-close-up.jpg'
      ])
          .setCost(Decimal.fromInt(1000))
          .setCurrency("\$")
          .build(),

      Item.builder()
          .setId(1)
          .setTitle('Title 2')
          .setDesc('Desc 2')
          .setImagePath('https://cdn.britannica.com/22/215522-050-8315BB78/green-grass-close-up.jpg')
          .setStats('...')
          .setSliderImagePaths([])
          .setCost(Decimal.fromInt(1000))
          .setCurrency("\$")
          .build(),

      Item.builder()
          .setId(2)
          .setTitle('Title 3')
          .setDesc('Desc 3')
          .setImagePath('https://cdn.britannica.com/22/215522-050-8315BB78/green-grass-close-up.jpg')
          .setStats('...')
          .setSliderImagePaths([])
          .setCost(Decimal.fromInt(1000))
          .setCurrency("\$")
          .build(),

      Item.builder()
          .setId(3)
          .setTitle('Title 4')
          .setDesc('Desc 4')
          .setImagePath('https://cdn.britannica.com/22/215522-050-8315BB78/green-grass-close-up.jpg')
          .setStats('...')
          .setSliderImagePaths([])
          .setCost(Decimal.fromInt(1000))
          .setCurrency("\$")
          .build(),

      Item.builder()
          .setId(4)
          .setTitle('Title 5')
          .setDesc('Desc 5')
          .setImagePath('https://cdn.britannica.com/22/215522-050-8315BB78/green-grass-close-up.jpg')
          .setStats('...')
          .setSliderImagePaths([])
          .setCost(Decimal.fromInt(1000))
          .setCurrency("\$")
          .build(),

      Item.builder()
          .setId(5)
          .setTitle('Title 6')
          .setDesc('Desc 6')
          .setImagePath('https://cdn.britannica.com/22/215522-050-8315BB78/green-grass-close-up.jpg')
          .setStats('...')
          .setSliderImagePaths([])
          .setCost(Decimal.fromInt(1000))
          .setCurrency("\$")
          .build(),

      Item.builder()
          .setId(6)
          .setTitle('Title 7')
          .setDesc('Desc 7')
          .setImagePath('https://cdn.britannica.com/22/215522-050-8315BB78/green-grass-close-up.jpg')
          .setStats('...')
          .setSliderImagePaths([])
          .setCost(Decimal.fromInt(1000))
          .setCurrency("\$")
          .build(),

      Item.builder()
          .setId(7)
          .setTitle('Title 8')
          .setDesc('Desc 8')
          .setImagePath('https://cdn.britannica.com/22/215522-050-8315BB78/green-grass-close-up.jpg')
          .setStats('...')
          .setSliderImagePaths([])
          .setCost(Decimal.fromInt(1000))
          .setCurrency("\$")
          .build(),

      Item.builder()
          .setId(8)
          .setTitle('Title 9')
          .setDesc('Desc 9')
          .setImagePath('https://cdn.britannica.com/22/215522-050-8315BB78/green-grass-close-up.jpg')
          .setStats('...')
          .setSliderImagePaths([])
          .setCost(Decimal.fromInt(1000))
          .setCurrency("\$")
          .build(),

      Item.builder()
          .setId(9)
          .setTitle('Title 10')
          .setDesc('Desc 10')
          .setImagePath('https://cdn.britannica.com/22/215522-050-8315BB78/green-grass-close-up.jpg')
          .setStats('...')
          .setSliderImagePaths([])
          .setCost(Decimal.fromInt(1000))
          .setCurrency("\$")
          .build(),

      Item.builder()
          .setId(10)
          .setTitle('Title 11')
          .setDesc('Desc 11')
          .setImagePath('https://cdn.britannica.com/22/215522-050-8315BB78/green-grass-close-up.jpg')
          .setStats('...')
          .setSliderImagePaths([])
          .setCost(Decimal.fromInt(1000))
          .setCurrency("\$")
          .build(),
    ];

    return items;
  }
}