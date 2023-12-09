import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/features/catalog/collection/presentation/controller/home_controller.dart';


class AppHomeSwitchCardsEvent extends ConsumerStatefulWidget {
  const AppHomeSwitchCardsEvent({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AppHomeSwitchCardsEventState();
}

class _AppHomeSwitchCardsEventState extends ConsumerState<AppHomeSwitchCardsEvent> {
  final List<Map<String, String>> listImage = [
    {
      'path': '65',
      'img':
          'https://image.hsv-tech.io/575x0/tfs/common/26d9c8c4-a082-4de7-98ff-38bca0492b9c.webp',
    },
    {
      'path': '65',
      'img':
          'https://image.hsv-tech.io/575x0/tfs/common/aa08a229-aa77-4686-a5de-88b1d91a9bd0.webp',
    },
    {
      'path': '65',
      'img':
          'https://image.hsv-tech.io/575x0/tfs/common/0dd3908c-4dc6-4f5c-abe2-b7e225be95e9.webp',
    },
    {
      'path': '65',
      'img':
          'https://image.hsv-tech.io/575x0/tfs/common/88b5d66c-faa9-4565-8172-6749e2b58f38.webp',
    }
  ];

  @override
  Widget build(BuildContext context) {
    final selected = ref.watch(homePageMenuBarSelectorProvider).last;
    bool isVisible = false;
    (selected == 2) || (selected == -1) ? isVisible = true : false;
    return Visibility(
      visible: isVisible,
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Stack(
            children: [
              for (var i in listImage) _buildDraggableImage(i),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDraggableImage(Map<String, String> imageData) {
    final index = listImage.indexOf(imageData);

    return Padding(
      key: ObjectKey(imageData),
      padding: EdgeInsets.only(
        left: 10 * index.toDouble(),
        top: 10 * index.toDouble(),
      ),
      child: GestureDetector(
        onTap: () {
          // Navigator.push(
          //   context,
          //   PageTransition(
          //     type: PageTransitionType.rightToLeftWithFade,
          //     child: CollectionPage(futureGetCollection(int.parse(imageData['path']))),
          //     childCurrent: widget,
          //   ),
          // );
        },
        child: Draggable(
          onDragEnd: (listener) {
            if (MediaQuery.of(context).size.width / 3 > listener.offset.dx ||
                MediaQuery.of(context).size.width * 2 / 3 <
                    listener.offset.dx) {
              setState(() {
                listImage.insert(0, imageData);
                listImage.removeLast();
              });
            }
          },
          feedback: ClipRRect(
            borderRadius:  BorderRadius.circular(10.0),
            child: Image.network(
              imageData['img']!,
              scale: 2,
            ),
          ),
          childWhenDragging: const SizedBox(
            width: 20,
            height: 20,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              imageData['img']!,
              scale: 2,
            ),
          ),
        ),
      ),
    );
  }
}
