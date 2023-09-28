import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:state_management/constants/app_style.dart';
import 'package:state_management/provider/radio_provider.dart';
import '../widget/date_time.dart';
import '../widget/radio_widget.dart';

class AddNewTaskModel extends ConsumerWidget {
  const AddNewTaskModel({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(30),
      height: MediaQuery.of(context).size.height * 0.70,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text('New Task Todo', textAlign: TextAlign.center,),),
          Divider(
            thickness: 1.2,
            color: Colors.grey.shade200,
          ),
          const Text('Title Task', style: AppStyle.headingOne,),
          TextField(),
          const Gap(6),
          Text('Description', style: AppStyle.headingOne,),
          TextField(),
          const Gap(12),
          Text('Category', style: AppStyle.headingOne,),
          Row(
            children: [
              Expanded(child: RadioWidget(categColor: Colors.green, titleRadio: 'Learn', valueInput: 1, onChangeValue: () => ref.read(radioProvider.notifier).update((state) => 1),)),
              Expanded(child: RadioWidget(categColor: Colors.blue.shade700, titleRadio: 'Work', valueInput: 2, onChangeValue: () => ref.read(radioProvider.notifier).update((state) => 2),)),
              Expanded(child: RadioWidget(categColor: Colors.amberAccent.shade700, titleRadio: 'Gene', valueInput: 3, onChangeValue: () => ref.read(radioProvider.notifier).update((state) => 3),)),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DateTimeWidget(titleText: 'Date', valueText: 'dd/mm/yy', iconSection: CupertinoIcons.calendar,),
              Gap(22),
              DateTimeWidget(titleText: 'Time', valueText: 'hh : mm', iconSection: CupertinoIcons.clock,)
            ],
          ),
          Gap(12),
          Row(
            children: [
              Expanded(
                child:
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue.shade800,
                    elevation: 1
                  ),
                  onPressed: (){},
                  child: Text('Cancel'),
                ),
              ),
              Gap(20),
              Expanded(
                child:
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue.shade800,
                      elevation: 1
                  ),
                  onPressed: (){},
                  child: Text('Create'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


