import 'package:booksy/Features/Home/Data/models/book_model/item.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/book_actions.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/book_detailed_app_bar.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/book_rate.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/recomendedBooksListView.dart';
import 'package:booksy/constants.dart';
import 'package:flutter/material.dart';

class BookDeatailsBody extends StatelessWidget {
  const BookDeatailsBody({super.key, required this.item});
  final Item item;
  final String tempImage =
      "https://media.istockphoto.com/id/2150381137/photo/young-woman-using-mobile-phone-for-online-shopping-via-mobile-app-at-home-casual-business.jpg?s=1024x1024&w=is&k=20&c=mD3xKhNNg_8bd_Sy-036ScIBPhshK-Ow63IiW3yXCRw=";
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverToBoxAdapter(
          // fillOverscroll: true,
          // hasScrollBody: false,
          child: SafeArea(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const BookDeatailsAppBar(),
              SizedBox(
                  width: MediaQuery.of(context).size.height * 0.20,
                  child: CustomListViewItem(
                    imageUrl:
                        item.volumeInfo?.imageLinks?.thumbnail ?? tempImage,
                  )),
              const SizedBox(
                height: 15,
              ),
              Text(
                item.volumeInfo?.title ?? "The Jungle Book",
                style: Booksy.text30,
                textAlign: TextAlign.center,
              ),
              Text(
                (item.volumeInfo?.authors?.isNotEmpty ?? false)
                    ? item.volumeInfo!.authors!.first
                    : "Rudyard Kipling",
                style: Booksy.text18.copyWith(
                    fontWeight: FontWeight.normal, fontStyle: FontStyle.italic),
              ),
              BookRate(
                count: item.volumeInfo!.pageCount ?? 100,
                rate: item.volumeInfo!.pageCount! ~/ 5 ?? 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  item.volumeInfo?.description ??
                      "هذا الكتاب علم النفس الصناعى فرع تطبيقى أساسا؛ يركز على تطبيقات علم النفس فى مجال العمل والإنتاج والصناعة؛ بالمعنى الشامل. وتهدف تطبيقاته إلى تحقيق أقصى استفادة ممكنة من تطبيقات علم النفس فى دراسات وحل مشكلات العمل والإنتاج، ومن يعمل فيهما، ويُسْأل عن إدارتهما؛ حتى تتحقق الكفاية الإنتاجية فى العمل، والراحة النفسية والاجتماعية والجسمية لمن يقوم بالعمل، ومن يديره أو يشرف عليه؛ مما يسهم فى تنمية المجتمع وتطويره - كهدف نهائى له؛ مع غيره من مختلف العلوم. ومع تطور علم النفس الصناعى وتنامى نشاطه؛ تغيرت تسميته إلى \" علم النفس الصناعى والتنظيمى \". وفى رؤية محرر هذا الكتاب أنه من الأوفق - فى وقتنا الحالى - تغيير التسمية لتصبح \" علم النفس الصناعى والإدارى \". وقد طرح رؤيته تلك وقام بتبريرها فى أول فصول الكتاب. كما كتب مقالين أحدهما بالعربية والآخر بالإنجليزية لنفس الهدف؛ نشر فى يناير من عام 2008 فى لبنان، وفى ابريل من نفس العام بمصر، كما نشر كتابه بعنوان \" علم النفس الصناعى والإدارى \" عام 2008 أيضًا - بالقاهرة. ويعتبر هذا الكتاب ثانى الكتب التى تنشر بالتسمية المقترحة؛ مستهدفًا نفس غايات العلم؛ محاولا تمهيد الطريق لتحقيقها بكل ما يمكنه؛ وهو - لاشك - كثير. الناشـر",
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  // textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 30),
              const BookActions(),
              const SizedBox(height: 30),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("   You can also like",
                      style: Booksy.text16.copyWith(
                        fontWeight: FontWeight.w600,
                      ))),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: SizedBox(child: SimilarBooksListView()),
              ),
            ],
          )),
        ),
      ],
    );
  }
}
