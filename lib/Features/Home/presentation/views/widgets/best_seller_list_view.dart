import 'package:booksy/Core/App_Router.dart';
import 'package:booksy/Features/Home/presentation/Manager/BestSeller_cubit/best_seller_cubit.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatelessWidget {
  BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<BestSellerCubit, BestSellerCubitState>(
        builder: (context, state) {
          if (state is BestSellerCubitSuccess) {
  return ListView.builder(
      itemCount: state.items.length,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              context.go(AppRouter.bookDetailsView);
            },
            child: BestSellerItem(index: index , item: state.items[index],));
      });
}else if (state is BestSellerCubitLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is BestSellerCubitFailed) {
            return Center(child: Text(state.erorrMessage));
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
